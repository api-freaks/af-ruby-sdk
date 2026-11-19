# frozen_string_literal: true

module Apifreaks
  module Internal
    module Http
      # Added by af-sdk-generation/scripts/lib/fix_ruby_binary_upload.py (RB-05 / GEN-03):
      # a request whose body is raw bytes (application/octet-stream).
      #
      # @api private
      class BinaryRequest < Apifreaks::Internal::Http::BaseRequest
        attr_reader :body

        # Reads a file argument into a binary String.
        #
        # @param value [IO, String, Pathname, nil] An IO (File, StringIO, ...) or a file path
        # @return [String, nil]
        def self.read_file(value)
          return nil if value.nil?
          return value.read.to_s.b if value.respond_to?(:read)

          path = value.respond_to?(:to_path) ? value.to_path : value
          raise ArgumentError, "file must be an IO or a path to an existing file (wrap raw bytes in StringIO)" unless path.is_a?(::String) && ::File.file?(path)

          ::File.binread(path)
        end

        # @param body [String, nil] The raw request body
        # @param content_type [String]
        def initialize(base_url:, path:, method:, headers: {}, query: {}, body: nil,
                       content_type: "application/octet-stream", request_options: {})
          super(base_url:, path:, method:, headers:, query:, request_options:)

          @body = body
          @content_type = content_type
        end

        # @return [Hash] The encoded HTTP request headers.
        def encode_headers(protected_keys: [])
          sdk_headers = {
            "Content-Type" => @content_type,
            "Accept" => "application/json"
          }.merge(@headers)
          merge_additional_headers(sdk_headers, protected_keys:)
        end

        # @return [String, nil] The raw HTTP request body.
        def encode_body
          @body
        end
      end
    end
  end
end
