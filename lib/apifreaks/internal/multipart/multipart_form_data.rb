# frozen_string_literal: true

module Apifreaks
  module Internal
    module Multipart
      # @api private
      class FormData
        # @return [Array<FormDataPart>] The parts in this multipart form data.
        attr_reader :parts

        # @return [Encoder] The encoder for this multipart form data.
        private attr_reader :encoder

        def initialize
          @encoder = Encoder.new
          @parts = []
        end

        # Adds a new part to the multipart form data.
        #
        # @param name [String] The name of the form field
        # @param value [String, Integer, Float, Boolean, #read] The value of the field
        # @param content_type [String, nil] Optional content type
        # @return [self] Returns self for chaining
        def add(name:, value:, content_type: nil)
          headers = content_type ? { "Content-Type" => content_type } : nil
          add_part(FormDataPart.new(name:, value:, headers:))
        end

        # Adds a file to the multipart form data.
        #
        # @param name [String] The name of the form field
        # @param file [String, #read] A path to a file on disk, or a file/readable object
        # @param filename [String, nil] Optional filename (defaults to basename of the path for paths and File objects,
        #   and to the field name for readable objects without a path or name, such as StringIO)
        # @param content_type [String, nil] Optional content type (e.g. "image/png")
        # @return [self] Returns self for chaining
        def add_file(name:, file:, filename: nil, content_type: nil)
          headers = content_type ? { "Content-Type" => content_type } : nil
          if file.is_a?(::String)
            filename ||= ::File.basename(file)
            file = ::File.binread(file)
          else
            filename ||= filename_for(file) || name
          end
          add_part(FormDataPart.new(name:, value: file, filename:, headers:))
        end

        # Adds a pre-created part to the multipart form data.
        #
        # @param part [FormDataPart] The part to add
        # @return [self] Returns self for chaining
        def add_part(part)
          @parts << part
          self
        end

        # Gets the content type string including the boundary.
        #
        # @return [String] The content type with boundary.
        def content_type
          @encoder.content_type
        end

        # Encode the multipart form data into a multipart/form-data payload.
        #
        # @return [String] The encoded body.
        def encode
          @encoder.encode(self)
        end

        # Patched (fix_ruby_multipart.py, RB-04): adds one file part per value.
        #
        # @param name [String] The name of the form field
        # @param value [IO, String, Pathname, Hash, Array, nil] An IO (File, Tempfile, ...), a file path,
        #   a Hash `{io: or content:, filename:, content_type:}`, or an Array of these (one part each)
        # @return [self]
        def add_file_param(name:, value:)
          case value
          when nil
            nil
          when ::Array
            value.each { |item| add_file_param(name: name, value: item) }
          when ::Hash
            file = value[:io] || value[:content] || value["io"] || value["content"]
            raise ArgumentError, "file Hash for `#{name}` needs :io or :content" if file.nil?

            filename = value[:filename] || value["filename"]
            filename ||= filename_for(file) if file.respond_to?(:read)
            content_type = value[:content_type] || value["content_type"] || content_type_for(filename)
            add_part(FormDataPart.new(name: name, value: file, filename: filename,
                                      headers: { "Content-Type" => content_type }))
          else
            if value.respond_to?(:read)
              add_file(name: name, file: value, content_type: content_type_for(filename_for(value)))
            elsif value.respond_to?(:to_path) || value.is_a?(::String)
              path = value.respond_to?(:to_path) ? value.to_path : value
              raise ArgumentError, "file not found for `#{name}`: #{path}" unless ::File.file?(path)

              ::File.open(path, "rb") do |io|
                add_file(name: name, file: io, content_type: content_type_for(path))
              end
            else
              raise ArgumentError, "unsupported value for file field `#{name}`: #{value.class}"
            end
          end
          self
        end

        # Patched (fix_ruby_multipart.py): MIME types by file extension.
        CONTENT_TYPES = {
          ".pdf" => "application/pdf", ".png" => "image/png", ".jpg" => "image/jpeg",
          ".jpeg" => "image/jpeg", ".gif" => "image/gif", ".bmp" => "image/bmp",
          ".tif" => "image/tiff", ".tiff" => "image/tiff", ".webp" => "image/webp",
          ".csv" => "text/csv", ".zip" => "application/zip", ".json" => "application/json",
          ".txt" => "text/plain"
        }.freeze

        private

        def content_type_for(filename)
          CONTENT_TYPES.fetch(::File.extname(filename.to_s).downcase, "application/octet-stream")
        end

        def filename_for(file)
          if file.is_a?(::File) || file.respond_to?(:path)
            ::File.basename(file.path)
          elsif file.respond_to?(:name)
            file.name
          end
        end
      end
    end
  end
end
