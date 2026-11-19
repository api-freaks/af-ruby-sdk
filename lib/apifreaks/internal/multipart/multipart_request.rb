# frozen_string_literal: true

module Apifreaks
  module Internal
    module Multipart
      # @api private
      class Request < Apifreaks::Internal::Http::BaseRequest
        attr_reader :body

        # @param base_url [String] The base URL for the request
        # @param path [String] The path for the request
        # @param method [Symbol] The HTTP method for the request (:get, :post, etc.)
        # @param headers [Hash] Additional headers for the request (optional)
        # @param query [Hash] Query parameters for the request (optional)
        # @param body [MultipartFormData, nil] The multipart form data for the request (optional)
        # @param request_options [Apifreaks::RequestOptions, Hash{Symbol=>Object}, nil]
        def initialize(base_url:, path:, method:, headers: {}, query: {}, body: nil, request_options: {})
          super(base_url:, path:, method:, headers:, query:, request_options:)

          @body = body
        end

        # @return [Hash] The encoded HTTP request headers.
        # @param protected_keys [Array<String>] Header keys set by the SDK client (e.g. auth, metadata)
        #   that must not be overridden by additional_headers from request_options.
        def encode_headers(protected_keys: [])
          # Patched (fix_ruby_empty_multipart.py): a form without parts (a file_id-only call) is sent
          # with no body, so it must not claim a multipart Content-Type either.
          sdk_headers = empty_form? ? {} : { "Content-Type" => @body.content_type }
          merge_additional_headers(sdk_headers.merge(@headers), protected_keys:)
        end

        # @return [String, nil] The encoded HTTP request body.
        # Note: additional_body_parameters from request_options are not applied to multipart requests.
        def encode_body
          return nil if empty_form?

          @body.encode
        end

        private

        # @return [Boolean] Whether there is nothing to send (no form, or a form without parts).
        def empty_form?
          @body.nil? || @body.parts.empty?
        end
      end
    end
  end
end
