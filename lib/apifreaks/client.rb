# frozen_string_literal: true

module Apifreaks
  class Client
    # Get detailed geolocation data for an IP address including country, city, timezone, currency, and optional security
    # and user-agent information
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GeolocationLookupRequestFormat, nil] :format
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::GeolocationLookupRequestLang, nil] :lang
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    # @option params [String, nil] :include
    #
    # @example
    #   client.geolocation_lookup(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GeolocationLookupResponse]
    def geolocation_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)
      query_params["include"] = params[:include] if params.key?(:include)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geolocation/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GeolocationLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          423 => Apifreaks::Types::LockedErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve detailed geolocation data for multiple IP addresses in a single request.
    # Supports up to `50,000` IP-addresses/host-names per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkGeolocationLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkGeolocationLookupRequestFormat, nil] :format
    # @option params [String, nil] :lang
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    # @option params [String, nil] :include
    #
    # @example
    #   client.bulk_geolocation_lookup(
    #     api_key: "apiKey",
    #     ips: ["ips"]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkGeolocationLookupResponseItem]]
    def bulk_geolocation_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkGeolocationLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format lang fields excludes include]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)
      query_params["include"] = params[:include] if params.key?(:include)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/geolocation/lookup",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkGeolocationLookupResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get comprehensive security information for a given IP address. Detects VPNs, proxies, Tor nodes, and other
    # security threats.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::IPSecurityLookupRequestFormat, nil] :format
    # @option params [String, nil] :ip
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    #
    # @example
    #   client.ip_security_lookup(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::IPSecurityLookupResponse]
    def ip_security_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/ip/security",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::IPSecurityLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          423 => Apifreaks::Types::LockedErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Bulk IP Security Lookup API allows you to retrieve security details for up to `50,000` IP-addresses in a
    # single request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkIPSecurityLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkIPSecurityLookupRequestFormat, nil] :format
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    #
    # @example
    #   client.bulk_ip_security_lookup(
    #     api_key: "apiKey",
    #     ips: ["ips"]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkIPSecurityLookupResponseItem]]
    def bulk_ip_security_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkIPSecurityLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format fields excludes]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/ip/security",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkIPSecurityLookupResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Convert a given address or place name into geographic coordinates (latitude and longitude).
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GeocoderSearchRequestFormat, nil] :format
    # @option params [String] :query
    # @option params [Integer, nil] :limit
    # @option params [Float, nil] :min_lat
    # @option params [Float, nil] :max_lat
    # @option params [Float, nil] :min_lon
    # @option params [Float, nil] :max_lon
    # @option params [String, nil] :accept_language
    #
    # @example
    #   client.geocoder_search(
    #     api_key: "apiKey",
    #     query: "query"
    #   )
    #
    # @return [Array[Apifreaks::Types::GeocoderSearchResponseItem]]
    def geocoder_search(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["query"] = params[:query] if params.key?(:query)
      query_params["limit"] = params[:limit] if params.key?(:limit)
      query_params["min_lat"] = params[:min_lat] if params.key?(:min_lat)
      query_params["max_lat"] = params[:max_lat] if params.key?(:max_lat)
      query_params["min_lon"] = params[:min_lon] if params.key?(:min_lon)
      query_params["max_lon"] = params[:max_lon] if params.key?(:max_lon)

      headers = {}
      headers["Accept-Language"] = params[:accept_language] unless params[:accept_language].nil?

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geocoder/search",
        headers: headers,
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::GeocoderSearchResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Convert geographic coordinates (latitude and longitude) into a human-readable address or place name.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GeocoderReverseRequestFormat, nil] :format
    # @option params [Float] :lat
    # @option params [Float] :lon
    # @option params [String, nil] :accept_language
    #
    # @example
    #   client.geocoder_reverse(
    #     api_key: "apiKey",
    #     lat: 1.1,
    #     lon: 1.1
    #   )
    #
    # @return [Apifreaks::Types::GeocoderReverseResponse]
    def geocoder_reverse(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["lon"] = params[:lon] if params.key?(:lon)

      headers = {}
      headers["Accept-Language"] = params[:accept_language] unless params[:accept_language].nil?

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geocoder/reverse",
        headers: headers,
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GeocoderReverseResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve current WHOIS information for a domain name.
    # This endpoint provides detailed registration information including registrar details,
    # dates, nameservers, and registrant information.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainWhoisLookupRequestFormat, nil] :format
    # @option params [String] :domain_name
    #
    # @example
    #   client.domain_whois_lookup(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainWhoisLookupResponse]
    def domain_whois_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/whois/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainWhoisLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve WHOIS information for `100 Domains per Request`.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkDomainWhoisLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkDomainWhoisLookupRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_domain_whois_lookup(
    #     api_key: "apiKey",
    #     domain_names: ["domainNames"]
    #   )
    #
    # @return [Apifreaks::Types::BulkDomainWhoisLookupResponse]
    def bulk_domain_whois_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDomainWhoisLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/domain/whois/live",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkDomainWhoisLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns WHOIS registration details for a specified IP address (IPv4 or IPv6).
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::IPWhoisLookupRequestFormat, nil] :format
    # @option params [String] :ip
    #
    # @example
    #   client.ip_whois_lookup(
    #     api_key: "apiKey",
    #     ip: "ip"
    #   )
    #
    # @return [Apifreaks::Types::IPWhoisLookupResponse]
    def ip_whois_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/ip/whois/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::IPWhoisLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns WHOIS registration details for a specified ASN, with or without the 'as' prefix.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::AsnWhoisLookupRequestFormat, nil] :format
    # @option params [String] :asn
    #
    # @example
    #   client.asn_whois_lookup(
    #     api_key: "apiKey",
    #     asn: "asn"
    #   )
    #
    # @return [Apifreaks::Types::AsnWhoisLookupResponse]
    def asn_whois_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["asn"] = params[:asn] if params.key?(:asn)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/asn/whois/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::AsnWhoisLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve historical WHOIS records for a domain name.
    # This endpoint provides a timeline of all recorded changes in domain registration information.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainWhoisHistoryRequestFormat, nil] :format
    # @option params [String] :domain_name
    #
    # @example
    #   client.domain_whois_history(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainWhoisHistoryResponse]
    def domain_whois_history(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/whois/history",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainWhoisHistoryResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Performs a reverse WHOIS search using one or more search parameters like keyword, email, owner, or company.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainWhoisReverseRequestFormat, nil] :format
    # @option params [String, nil] :keyword
    # @option params [String, nil] :email
    # @option params [String, nil] :owner
    # @option params [String, nil] :company
    # @option params [Boolean, nil] :exact
    # @option params [Apifreaks::Types::DomainWhoisReverseRequestMode, nil] :mode
    # @option params [Integer, nil] :page
    #
    # @example
    #   client.domain_whois_reverse(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::DomainWhoisReverseResponse]
    def domain_whois_reverse(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["keyword"] = params[:keyword] if params.key?(:keyword)
      query_params["email"] = params[:email] if params.key?(:email)
      query_params["owner"] = params[:owner] if params.key?(:owner)
      query_params["company"] = params[:company] if params.key?(:company)
      query_params["exact"] = params[:exact] if params.key?(:exact)
      query_params["mode"] = params[:mode] if params.key?(:mode)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/whois/reverse",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainWhoisReverseResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve real-time DNS records for any hostname. Supports multiple record types including A, AAAA, MX, NS, SOA,
    # SPF, TXT, and CNAME records.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainDNSLookupRequestFormat, nil] :format
    # @option params [String, nil] :host_name
    # @option params [String, nil] :ip_address
    # @option params [String, nil] :type
    #
    # @example
    #   client.domain_dns_lookup(
    #     api_key: "apiKey",
    #     type: ["type"]
    #   )
    #
    # @return [Apifreaks::Types::DomainDNSLookupResponse]
    def domain_dns_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["host-name"] = params[:host_name] if params.key?(:host_name)
      query_params["ipAddress"] = params[:ip_address] if params.key?(:ip_address)
      query_params["type"] = Array(params[:type]).join(",") if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/dns/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainDNSLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Perform DNS lookups for multiple hostnames in a single request. Supports up to `100 host-names per request`
    # and returns DNS records including A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME records.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkDomainDNSLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkDomainDNSLookupRequestFormat, nil] :format
    # @option params [String, nil] :type
    #
    # @example
    #   client.bulk_domain_dns_lookup(
    #     api_key: "apiKey",
    #     type: ["type"],
    #     domain_names: ["domainNames"]
    #   )
    #
    # @return [Apifreaks::Types::BulkDomainDNSLookupResponse]
    def bulk_domain_dns_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDomainDNSLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format type]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["type"] = Array(params[:type]).join(",") if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/domain/dns/live",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkDomainDNSLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve historical DNS records for any hostname. Access unique historical data for A, AAAA, MX, NS, SOA, SPF,
    # TXT, and CNAME records,
    # including subdomains. Results are paginated with up to 100 unique records per page.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainDNSHistoryRequestFormat, nil] :format
    # @option params [String] :host_name
    # @option params [String, nil] :type
    # @option params [Integer, nil] :page
    #
    # @example
    #   client.domain_dns_history(
    #     api_key: "apiKey",
    #     host_name: "host-name",
    #     type: ["type"]
    #   )
    #
    # @return [Apifreaks::Types::DomainDNSHistoryResponse]
    def domain_dns_history(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["host-name"] = params[:host_name] if params.key?(:host_name)
      query_params["type"] = Array(params[:type]).join(",") if params.key?(:type)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/dns/history",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainDNSHistoryResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve all the hostnames associated with any particular A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME DNS records.
    # For instance, you can access all the hostnames hosted on any IP/CIDR notation, all the domain names using
    # Cloudflare name servers, and all the domain names using Google Mailbox
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainDNSReverseRequestFormat, nil] :format
    # @option params [Apifreaks::Types::DomainDNSReverseRequestType] :type
    # @option params [String] :value
    # @option params [Boolean, nil] :exact
    # @option params [Integer, nil] :page
    #
    # @example
    #   client.domain_dns_reverse(
    #     api_key: "apiKey",
    #     type: "A",
    #     value: "value"
    #   )
    #
    # @return [Apifreaks::Types::DomainDNSReverseResponse]
    def domain_dns_reverse(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["type"] = params[:type] if params.key?(:type)
      query_params["value"] = params[:value] if params.key?(:value)
      query_params["exact"] = params[:exact] if params.key?(:exact)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/dns/reverse",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainDNSReverseResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Execute a series of web scraping instructions on a target URL.
    # Supports various operations like form filling, clicking, data extraction, and CAPTCHA solving.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::WebScrapeRequestBody]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::WebScrapeRequestFormat, nil] :format
    # @option params [String] :url
    # @option params [Boolean, nil] :text
    # @option params [Boolean, nil] :js_enabled
    # @option params [Apifreaks::Types::WebScrapeRequestProxy, nil] :proxy
    # @option params [Boolean, nil] :ssl_ignore
    # @option params [String, nil] :window_size
    # @option params [Boolean, nil] :ad_block
    # @option params [Boolean, nil] :captcha
    #
    # @example
    #   client.web_scrape(
    #     api_key: "apiKey",
    #     url: "https://example.com",
    #     instructions: [{}, {}, {}, {}, {
    #       extract: {
    #         profile: "#profile",
    #         welcomeMessage: "#welcome-message",
    #         userInfo: "#user-info"
    #       }
    #     }, {}, {}]
    #   )
    #
    # @return [Apifreaks::Types::WebScrapeResponse]
    def web_scrape(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_param_names = %i[api_key format url text js_enabled proxy ssl_ignore window_size ad_block captcha]
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["url"] = params[:url] if params.key?(:url)
      query_params["text"] = params[:text] if params.key?(:text)
      query_params["jsEnabled"] = params[:js_enabled] if params.key?(:js_enabled)
      query_params["proxy"] = params[:proxy] if params.key?(:proxy)
      query_params["sslIgnore"] = params[:ssl_ignore] if params.key?(:ssl_ignore)
      query_params["windowSize"] = params[:window_size] if params.key?(:window_size)
      query_params["adBlock"] = params[:ad_block] if params.key?(:ad_block)
      query_params["captcha"] = params[:captcha] if params.key?(:captcha)
      params = params.except(*query_param_names)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/scraping",
        query: query_params,
        body: Apifreaks::Types::WebScrapeRequestBody.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::WebScrapeResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          405 => Apifreaks::Types::MethodNotAllowedErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates a single email address and returns result.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::EmailValidateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::EmailValidateRequestFormat, nil] :format
    #
    # @example
    #   client.email_validate(
    #     api_key: "apiKey",
    #     email: "email"
    #   )
    #
    # @return [Apifreaks::Types::EmailValidateResponse]
    def email_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::EmailValidateRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/email-validation/single",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::EmailValidateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates a bulk of email addresses and returns result for each. Maximum `10` email addresses per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkEmailValidateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkEmailValidateRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_email_validate(
    #     api_key: "apiKey",
    #     email_data: [{
    #       email: "email"
    #     }]
    #   )
    #
    # @return [Apifreaks::Types::BulkEmailValidateResponse]
    def bulk_email_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkEmailValidateRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/email-validation/bulk",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkEmailValidateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates email syntax and checks the domain for disposable, free, spam, and role-account signals, plus MX/A DNS
    # records. Send the email (and optionally an ip) as a JSON request body. When an ip is included, the response also
    # carries geolocation and security data for it.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::DisposableEmailCheckV2Request]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DisposableEmailCheckV2RequestFormat, nil] :format
    #
    # @example
    #   client.disposable_email_check_v2(
    #     api_key: "apiKey",
    #     email: "test@sogetthis.com"
    #   )
    #
    # @return [Apifreaks::Types::DisposableEmailCheckV2Response]
    def disposable_email_check_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::DisposableEmailCheckV2Request.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v2.0/email/disposable-check",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DisposableEmailCheckV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Checks a bulk of email addresses (each with an optional ip) and returns a disposable email check result for each,
    # in the same order as the request. Maximum `100` entries per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkDisposableEmailCheckV2Request]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkDisposableEmailCheckV2RequestFormat, nil] :format
    #
    # @example
    #   client.bulk_disposable_email_check_v2(
    #     api_key: "apiKey",
    #     email_data: [{
    #       email: "abc"
    #     }, {
    #       email: "john@microsoft.com",
    #       ip: "8.8.8.8"
    #     }, {
    #       email: "test@mailinator.com"
    #     }]
    #   )
    #
    # @return [Apifreaks::Types::BulkDisposableEmailCheckV2Response]
    def bulk_disposable_email_check_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDisposableEmailCheckV2Request.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v2.0/email/disposable-check/bulk",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkDisposableEmailCheckV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates a single phone number and returns detailed metadata including carrier, line type, geolocation, time
    # zones, and standardized formats.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::PhoneValidateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PhoneValidateRequestFormat, nil] :format
    #
    # @example
    #   client.phone_validate(
    #     api_key: "apiKey",
    #     number: "+14155552671"
    #   )
    #
    # @return [Apifreaks::Types::PhoneValidateResponse]
    def phone_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::PhoneValidateRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/phone/validation",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PhoneValidateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates up to 100 phone numbers in a single request. Each number is processed independently — invalid entries
    # return per-number errors without affecting the rest of the batch.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkPhoneValidateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkPhoneValidateRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_phone_validate(
    #     api_key: "apiKey",
    #     numbers: [{
    #       number: "+14155552671"
    #     }, {
    #       number: "+447911123456"
    #     }, {
    #       number: "+919876543210"
    #     }]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkPhoneValidateResponseItem]]
    def bulk_phone_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkPhoneValidateRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/phone/validation/bulk",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkPhoneValidateResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve comprehensive SSL certificate information without the certificate chain.
    # This endpoint provides detailed information about the SSL certificate including expiry dates, issuer details, and
    # encryption methods.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainSslLookupRequestFormat, nil] :format
    # @option params [String] :domain_name
    # @option params [Boolean, nil] :ssl_raw
    #
    # @example
    #   client.domain_ssl_lookup(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainSslLookupResponse]
    def domain_ssl_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)
      query_params["sslRaw"] = params[:ssl_raw] if params.key?(:ssl_raw)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/ssl/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainSslLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve the complete SSL certificate chain from root Certificate Authority (CA) to end-user certificate.
    # This endpoint provides comprehensive information about each certificate in the chain.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainSslChainLookupRequestFormat, nil] :format
    # @option params [String] :domain_name
    # @option params [Boolean, nil] :ssl_raw
    #
    # @example
    #   client.domain_ssl_chain_lookup(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainSslChainLookupResponse]
    def domain_ssl_chain_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)
      query_params["sslRaw"] = params[:ssl_raw] if params.key?(:ssl_raw)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/ssl/live/chain",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainSslChainLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Domain Search API is designed to simplify the process of finding available domain names across all top-level
    # domains (TLDs) and second-level domains (SLDs).
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainAvailabilityCheckRequestFormat, nil] :format
    # @option params [String] :domain
    # @option params [Apifreaks::Types::DomainAvailabilityCheckRequestSource, nil] :source
    #
    # @example
    #   client.domain_availability_check(
    #     api_key: "apiKey",
    #     domain: "domain"
    #   )
    #
    # @return [Apifreaks::Types::DomainAvailabilityCheckResponse]
    def domain_availability_check(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domain"] = params[:domain] if params.key?(:domain)
      query_params["source"] = params[:source] if params.key?(:source)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/availability",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainAvailabilityCheckResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Perform Bulk Domain Availability checks using a list of domains. Supports upto `100 Domains Per Request`.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkDomainAvailabilityCheckRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkDomainAvailabilityCheckRequestFormat, nil] :format
    # @option params [Apifreaks::Types::BulkDomainAvailabilityCheckRequestSource, nil] :source
    #
    # @example
    #   client.bulk_domain_availability_check(
    #     api_key: "apiKey",
    #     domain_names: ["domainNames"]
    #   )
    #
    # @return [Apifreaks::Types::BulkDomainAvailabilityCheckResponse]
    def bulk_domain_availability_check(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDomainAvailabilityCheckRequest.new(params).to_h
      non_body_param_names = %w[apiKey format source]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["source"] = params[:source] if params.key?(:source)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/domain/availability",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkDomainAvailabilityCheckResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Domain Search API is designed to simplify the process of finding available domain names across all top-level
    # domains (TLDs) and second-level domains (SLDs).
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainAvailabilitySuggestionsRequestFormat, nil] :format
    # @option params [String] :domain
    # @option params [Apifreaks::Types::DomainAvailabilitySuggestionsRequestSource, nil] :source
    # @option params [Integer, nil] :count
    # @option params [Boolean, nil] :sug
    #
    # @example
    #   client.domain_availability_suggestions(
    #     api_key: "apiKey",
    #     domain: "domain"
    #   )
    #
    # @return [Apifreaks::Types::DomainAvailabilitySuggestionsResponse]
    def domain_availability_suggestions(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domain"] = params[:domain] if params.key?(:domain)
      query_params["source"] = params[:source] if params.key?(:source)
      query_params["count"] = params[:count] if params.key?(:count)
      query_params["sug"] = params[:sug] if params.key?(:sug)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/availability/suggestions",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainAvailabilitySuggestionsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Subdomain Lookup API is designed to retrieve subdomains related to the given domain name. It helps you explore
    # subdomains that are available for registration or usage.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::SubdomainsLookupRequestFormat, nil] :format
    # @option params [String] :domain
    # @option params [String, nil] :after
    # @option params [String, nil] :before
    # @option params [Apifreaks::Types::SubdomainsLookupRequestStatus, nil] :status
    # @option params [String, nil] :page
    #
    # @example
    #   client.subdomains_lookup(
    #     api_key: "apiKey",
    #     domain: "domain"
    #   )
    #
    # @return [Apifreaks::Types::SubdomainsLookupResponse]
    def subdomains_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domain"] = params[:domain] if params.key?(:domain)
      query_params["after"] = params[:after] if params.key?(:after)
      query_params["before"] = params[:before] if params.key?(:before)
      query_params["status"] = params[:status] if params.key?(:status)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/subdomains/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::SubdomainsLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Domain Typosquatting API searches for registered domains that are typo or look-alike variants of a brand
    # keyword, or that match a wildcard pattern. Results include registration lifecycle data and drop status across
    # 1529+ TLDs, paginated at 100 domains per page.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainTyposquattingRequestFormat, nil] :format
    # @option params [String, nil] :keyword
    # @option params [String, nil] :pattern
    # @option params [String, nil] :page_token
    #
    # @example
    #   client.domain_typosquatting(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::DomainTyposquattingResponse]
    def domain_typosquatting(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["keyword"] = params[:keyword] if params.key?(:keyword)
      query_params["pattern"] = params[:pattern] if params.key?(:pattern)
      query_params["pageToken"] = params[:page_token] if params.key?(:page_token)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/typosquatting",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainTyposquattingResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # The Domain Reputation API evaluates a domain against threat intelligence sources, DGA (domain generation
    # algorithm) scoring, trust signals, and email deliverability configuration, returning a consolidated risk
    # assessment with a verdict, severity, and supporting evidence.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainReputationRequestFormat, nil] :format
    # @option params [String] :domain_name
    #
    # @example
    #   client.domain_reputation(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainReputationResponse]
    def domain_reputation(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/reputation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainReputationResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve sunrise and sunset times, current position of the moon, and other related information by specifying a
    # location address, location coordinates, IP address, or using the client IP address if no parameter is passed.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::AstronomyLookupV2RequestFormat, nil] :format
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::AstronomyLookupV2RequestLang, nil] :lang
    # @option params [String, nil] :date
    # @option params [Float, nil] :elevation
    # @option params [String, nil] :time_zone
    #
    # @example
    #   client.astronomy_lookup_v2(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::AstronomyLookupV2Response]
    def astronomy_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["elevation"] = params[:elevation] if params.key?(:elevation)
      query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/geolocation/astronomy",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::AstronomyLookupV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get current time, date, and timezone details by specifying a timezone name, location address, GPS coordinates, IP
    # address, IATA/ICAO airport code, UN/LOCODE, or use the client IP if no parameter is provided.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::TimezoneLookupV2RequestFormat, nil] :format
    # @option params [String, nil] :ip
    # @option params [String, nil] :tz
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [Apifreaks::Types::TimezoneLookupV2RequestLang, nil] :lang
    # @option params [String, nil] :iata_code
    # @option params [String, nil] :icao_code
    # @option params [String, nil] :lo_code
    #
    # @example
    #   client.timezone_lookup_v2(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::TimezoneLookupV2Response]
    def timezone_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["tz"] = params[:tz] if params.key?(:tz)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["iata_code"] = params[:iata_code] if params.key?(:iata_code)
      query_params["icao_code"] = params[:icao_code] if params.key?(:icao_code)
      query_params["lo_code"] = params[:lo_code] if params.key?(:lo_code)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/geolocation/timezone",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::TimezoneLookupV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get detailed IP geolocation data for an IP address including country, city, timezone, currency, and optional
    # threat intelligence and user-agent information.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GeolocationLookupV2RequestFormat, nil] :format
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::GeolocationLookupV2RequestLang, nil] :lang
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    # @option params [String, nil] :include
    #
    # @example
    #   client.geolocation_lookup_v2(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GeolocationLookupV2Response]
    def geolocation_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)
      query_params["include"] = params[:include] if params.key?(:include)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/geolocation/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GeolocationLookupV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          423 => Apifreaks::Types::LockedErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get detailed IP geolocation data for multiple IP addresses including country, city, timezone, currency, and
    # optional threat intelligence information. Supports up to 50,000 IP addresses per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkGeolocationLookupV2Request]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkGeolocationLookupV2RequestFormat, nil] :format
    # @option params [Apifreaks::Types::BulkGeolocationLookupV2RequestLang, nil] :lang
    # @option params [String, nil] :fields
    # @option params [String, nil] :excludes
    # @option params [String, nil] :include
    #
    # @example
    #   client.bulk_geolocation_lookup_v2(
    #     api_key: "apiKey",
    #     ips: ["ips"]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkGeolocationLookupV2ResponseItem]]
    def bulk_geolocation_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkGeolocationLookupV2Request.new(params).to_h
      non_body_param_names = %w[apiKey format lang fields excludes include]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["fields"] = params[:fields] if params.key?(:fields)
      query_params["excludes"] = params[:excludes] if params.key?(:excludes)
      query_params["include"] = params[:include] if params.key?(:include)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v2.0/geolocation/lookup",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkGeolocationLookupV2ResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns the current WHOIS record for the specified domain, including registrar details,
    # registrant/administrative/technical/billing/reseller contacts, name servers, status codes, and raw WHOIS text.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::DomainWhoisLookupV2RequestFormat, nil] :format
    # @option params [String] :domain_name
    #
    # @example
    #   client.domain_whois_lookup_v2(
    #     api_key: "apiKey",
    #     domain_name: "domainName"
    #   )
    #
    # @return [Apifreaks::Types::DomainWhoisLookupV2Response]
    def domain_whois_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["domainName"] = params[:domain_name] if params.key?(:domain_name)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/domain/whois/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::DomainWhoisLookupV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns the current WHOIS record for each requested domain, in request order. Supports up to 100 domain names per
    # request; a domain that fails to resolve yields an error item instead of failing the whole batch.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkDomainWhoisLookupV2Request]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkDomainWhoisLookupV2RequestFormat, nil] :format
    #
    # @example
    #   client.bulk_domain_whois_lookup_v2(
    #     api_key: "apiKey",
    #     domain_names: ["domainNames"]
    #   )
    #
    # @return [Apifreaks::Types::BulkDomainWhoisLookupV2Response]
    def bulk_domain_whois_lookup_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDomainWhoisLookupV2Request.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v2.0/domain/whois/live",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkDomainWhoisLookupV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns the current live price for the requested commodity symbols. Unresolved symbols degrade to a 206 partial
    # response instead of failing the whole request.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityLatestRatesV2RequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String, nil] :quote
    #
    # @example
    #   client.commodity_latest_rates_v2(
    #     api_key: "apiKey",
    #     symbols: ["symbols"]
    #   )
    #
    # @return [Apifreaks::Types::CommodityLatestRatesV2Response]
    def commodity_latest_rates_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["quote"] = params[:quote] if params.key?(:quote)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/rates/latest",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityLatestRatesV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns OHLC price data for the requested commodity symbols on a specific date. Falls back to the nearest earlier
    # rate if none exists for the exact date. Unresolved symbols degrade to a 206 partial response instead of failing
    # the whole request.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityHistoricalRatesV2RequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String] :date
    #
    # @example
    #   client.commodity_historical_rates_v2(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityHistoricalRatesV2Response]
    def commodity_historical_rates_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["date"] = params[:date] if params.key?(:date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/rates/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityHistoricalRatesV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns price fluctuation metrics (start, end, change, percent change) for the requested commodity symbols over a
    # date range. For monthly-updated commodities the range snaps to month boundaries. Unresolved symbols degrade to a
    # 206 partial response instead of failing the whole request.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityFluctuationV2RequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String] :start_date
    # @option params [String] :end_date
    #
    # @example
    #   client.commodity_fluctuation_v2(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityFluctuationV2Response]
    def commodity_fluctuation_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/fluctuation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityFluctuationV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns day-by-day OHLC data for the requested commodity symbols within a date range, indexed by date. Non-trading
    # days are excluded. Unresolved symbols degrade to a 206 partial response instead of failing the whole request.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityTimeSeriesV2RequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String] :start_date
    # @option params [String] :end_date
    #
    # @example
    #   client.commodity_time_series_v2(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityTimeSeriesV2Response]
    def commodity_time_series_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/time-series",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityTimeSeriesV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns the list of supported commodity symbols with metadata. Deprecated symbols stay listed with status
    # "inactive" and a deprecationDate.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommoditySymbolsV2RequestFormat, nil] :format
    #
    # @example
    #   client.commodity_symbols_v2(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CommoditySymbolsV2Response]
    def commodity_symbols_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/symbols",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommoditySymbolsV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns the prices of one commodity through a UTC day at the requested interval, keyed by UTC timestamp. Each
    # request costs a flat 50 credits however many points it returns.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [String] :symbols
    # @option params [Apifreaks::Types::CommodityIntradayRatesV2RequestInterval] :interval
    # @option params [String] :date
    # @option params [String, nil] :start_time
    # @option params [Boolean, nil] :metadata
    #
    # @example
    #   client.commodity_intraday_rates_v2(
    #     api_key: "apiKey",
    #     symbols: "symbols",
    #     interval: "1m",
    #     date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityIntradayRatesV2Response]
    def commodity_intraday_rates_v2(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
      query_params["interval"] = params[:interval] if params.key?(:interval)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["startTime"] = params[:start_time] if params.key?(:start_time)
      query_params["metadata"] = params[:metadata] if params.key?(:metadata)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v2.0/commodity/rates/intraday",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityIntradayRatesV2Response.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API merges multiple PDF files into a single PDF, in the order they are provided
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfMergeRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_merge(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfMergeResponse]
    def pdf_merge(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/merge",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfMergeResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API removes a selection or range of pages from a PDF file.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfRemovePagesRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String] :pages
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_remove_pages(
    #     api_key: "apiKey",
    #     pages: "pages"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfRemovePagesResponse]
    def pdf_remove_pages(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/remove-pages",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfRemovePagesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API splits a PDF into multiple parts based on specified page numbers or ranges.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfSplitRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_split(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfSplitResponse]
    def pdf_split(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/split",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfSplitResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API rotates pages of a PDF by a specified angle (in multiples of 90 degrees).
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfRotateRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [Integer] :rotate
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_rotate(
    #     api_key: "apiKey",
    #     rotate: 1
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfRotateResponse]
    def pdf_rotate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["rotate"] = params[:rotate] if params.key?(:rotate)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/rotate",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfRotateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API compresses a given PDF file to reduce its file size.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfCompressRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [String, nil] :output
    # @option params [Apifreaks::Types::PdfCompressRequestCompressionLevel] :compression_level
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_compress(
    #     api_key: "apiKey",
    #     compression_level: "low"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfCompressResponse]
    def pdf_compress(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["compression_level"] = params[:compression_level] if params.key?(:compression_level)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/compress",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfCompressResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API extracts specific pages or page ranges from a PDF file and returns them as a new PDF.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfExtractPagesRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String] :pages
    # @option params [Boolean, nil] :separated
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_extract_pages(
    #     api_key: "apiKey",
    #     pages: "pages"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfExtractPagesResponse]
    def pdf_extract_pages(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["separated"] = params[:separated] if params.key?(:separated)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/extract-pages",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfExtractPagesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # API endpoint that linearizes any given PDF, restructuring it for faster loading and page-by-page viewing in web
    # browsers.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfLinearizeRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_linearize(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfLinearizeResponse]
    def pdf_linearize(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/linearize",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfLinearizeResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API encrypts a PDF file by setting a password required to open it.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfEncryptRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :file_password
    # @option params [String] :user_password
    # @option params [String, nil] :owner_password
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_encrypt(
    #     api_key: "apiKey",
    #     user_password: "user_password"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfEncryptResponse]
    def pdf_encrypt(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["file_password"] = params[:file_password] if params.key?(:file_password)
      query_params["user_password"] = params[:user_password] if params.key?(:user_password)
      query_params["owner_password"] = params[:owner_password] if params.key?(:owner_password)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/encrypt",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfEncryptResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API decrypts PDF files, removing all encryption, including open passwords and permission restrictions.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfDecryptRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String] :file_password
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_decrypt(
    #     api_key: "apiKey",
    #     file_password: "file_password"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfDecryptResponse]
    def pdf_decrypt(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["file_password"] = params[:file_password] if params.key?(:file_password)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/decrypt",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfDecryptResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API applies permission restrictions on a PDF file, such as disabling printing, copying, or editing. This can
    # include password protection to enforce restrictions.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfRestrictRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :file_password
    # @option params [String] :user_password
    # @option params [String, nil] :owner_password
    # @option params [Apifreaks::Types::PdfRestrictRequestRestrictionsItem, nil] :restrictions
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_restrict(
    #     api_key: "apiKey",
    #     user_password: "user_password",
    #     restrictions: ["print_high"]
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfRestrictResponse]
    def pdf_restrict(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["file_password"] = params[:file_password] if params.key?(:file_password)
      query_params["user_password"] = params[:user_password] if params.key?(:user_password)
      query_params["owner_password"] = params[:owner_password] if params.key?(:owner_password)
      query_params["restrictions"] = params[:restrictions] if params.key?(:restrictions)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/restrict",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfRestrictResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API removes permission restrictions from a PDF while keeping it encrypted. If you want to remove all security
    # (including encryption), use the `/pdf/decrypt` endpoint instead.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfUnrestrictRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String] :file_password
    # @option params [String] :user_password
    # @option params [String, nil] :owner_password
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_unrestrict(
    #     api_key: "apiKey",
    #     file_password: "file_password",
    #     user_password: "user_password"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfUnrestrictResponse]
    def pdf_unrestrict(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["file_password"] = params[:file_password] if params.key?(:file_password)
      query_params["user_password"] = params[:user_password] if params.key?(:user_password)
      query_params["owner_password"] = params[:owner_password] if params.key?(:owner_password)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/unrestrict",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfUnrestrictResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API converts a given PDF file into a sequence of PNG images.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfConvertToPngRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [Integer, nil] :resolution
    # @option params [String, nil] :image_smoothing
    # @option params [Apifreaks::Types::PdfConvertToPngRequestProfile, nil] :profile
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_convert_to_png(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfConvertToPngResponse]
    def pdf_convert_to_png(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["resolution"] = params[:resolution] if params.key?(:resolution)
      query_params["image_smoothing"] = params[:image_smoothing] if params.key?(:image_smoothing)
      query_params["profile"] = params[:profile] if params.key?(:profile)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/png",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfConvertToPngResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API converts a given PDF file into a sequence of JPG images.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfConvertToJpgRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [Integer, nil] :quality
    # @option params [String, nil] :pages
    # @option params [Integer, nil] :resolution
    # @option params [String, nil] :image_smoothing
    # @option params [Apifreaks::Types::PdfConvertToJpgRequestProfile, nil] :profile
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_convert_to_jpg(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfConvertToJpgResponse]
    def pdf_convert_to_jpg(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["quality"] = params[:quality] if params.key?(:quality)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["resolution"] = params[:resolution] if params.key?(:resolution)
      query_params["image_smoothing"] = params[:image_smoothing] if params.key?(:image_smoothing)
      query_params["profile"] = params[:profile] if params.key?(:profile)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/jpg",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfConvertToJpgResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API converts a given PDF file into a sequence of TIFF images. The output images can be saved as a single TIFF
    # file, or as a sequence of TIFF files.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfConvertToTiffRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [Integer, nil] :resolution
    # @option params [String, nil] :image_smoothing
    # @option params [Apifreaks::Types::PdfConvertToTiffRequestProfile, nil] :profile
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_convert_to_tiff(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfConvertToTiffResponse]
    def pdf_convert_to_tiff(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["resolution"] = params[:resolution] if params.key?(:resolution)
      query_params["image_smoothing"] = params[:image_smoothing] if params.key?(:image_smoothing)
      query_params["profile"] = params[:profile] if params.key?(:profile)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/tif",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfConvertToTiffResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Converts a PDF file to a BMP image.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfConvertToBmpRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [Integer, nil] :resolution
    # @option params [String, nil] :image_smoothing
    # @option params [Apifreaks::Types::PdfConvertToBmpRequestProfile, nil] :profile
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_convert_to_bmp(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfConvertToBmpResponse]
    def pdf_convert_to_bmp(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["resolution"] = params[:resolution] if params.key?(:resolution)
      query_params["image_smoothing"] = params[:image_smoothing] if params.key?(:image_smoothing)
      query_params["profile"] = params[:profile] if params.key?(:profile)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/bmp",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfConvertToBmpResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API converts a given PDF file into a sequence of GIF images.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfConvertToGifRequestFormat, nil] :format
    # @option params [String, nil] :file_id
    # @option params [Boolean, nil] :destroy
    # @option params [String, nil] :output
    # @option params [String, nil] :pages
    # @option params [Integer, nil] :resolution
    # @option params [String, nil] :image_smoothing
    # @option params [Apifreaks::Types::PdfConvertToGifRequestProfile, nil] :profile
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @example
    #   client.pdf_convert_to_gif(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfConvertToGifResponse]
    def pdf_convert_to_gif(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)
      query_params["destroy"] = params[:destroy] if params.key?(:destroy)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["pages"] = params[:pages] if params.key?(:pages)
      query_params["resolution"] = params[:resolution] if params.key?(:resolution)
      query_params["image_smoothing"] = params[:image_smoothing] if params.key?(:image_smoothing)
      query_params["profile"] = params[:profile] if params.key?(:profile)
      query_params["webhook_url"] = params[:webhook_url] if params.key?(:webhook_url)
      query_params["webhook_failure_notification"] = params[:webhook_failure_notification] if params.key?(:webhook_failure_notification)

      headers = {}
      headers["X-Webhook-Authorization"] = params[:webhook_authorization] if params[:webhook_authorization]

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/gif",
        headers: headers,
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfConvertToGifResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API uploads multiple PDF files to the API Freaks server and generates their unique file IDs.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfUploadResourcesRequestFormat, nil] :format
    #
    # @example
    #   client.pdf_upload_resources(api_key: "apiKey")
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Apifreaks::Types::PdfUploadResourcesResponse]
    def pdf_upload_resources(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/resource/upload",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfUploadResourcesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API uploads PDF files to the API Freaks server in binary format.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfUploadBinaryRequestFormat, nil] :format
    # @option params [String] :file_name
    # @option params [IO, String, Pathname] :file The PDF to upload: a File/IO or a file path
    #
    # @return [Apifreaks::Types::PdfUploadBinaryResponse]
    def pdf_upload_binary(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_param_names = %i[api_key format file_name]
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_name"] = params[:file_name] if params.key?(:file_name)
      params = params.except(*query_param_names)

      # Patched (fix_ruby_binary_upload.py, RB-05): send the raw file bytes.
      request = Apifreaks::Internal::Http::BinaryRequest.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/resource/upload-binary",
        query: query_params,
        body: Apifreaks::Internal::Http::BinaryRequest.read_file(params[:file]),
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfUploadBinaryResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API downloads PDF files or ZIP archives from the server using their unique resource ID.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfDownloadResourceRequestFormat, nil] :format
    # @option params [String] :resource_id
    #
    # @example
    #   client.pdf_download_resource(
    #     api_key: "apiKey",
    #     resource_id: "resource_id"
    #   )
    #
    # @return [String]
    def pdf_download_resource(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["resource_id"] = params[:resource_id] if params.key?(:resource_id)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/pdf/resource/download",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      return response.body if code.between?(200, 299)

      error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
      error_types = {
        400 => Apifreaks::Types::BadRequestErrorBody,
        401 => Apifreaks::Types::UnauthorizedErrorBody,
        402 => Apifreaks::Types::PaymentRequiredErrorBody,
        403 => Apifreaks::Types::ForbiddenErrorBody,
        406 => Apifreaks::Types::NotAcceptableErrorBody,
        413 => Apifreaks::Types::ContentTooLargeErrorBody,
        429 => Apifreaks::Types::TooManyRequestsErrorBody,
        500 => Apifreaks::Types::InternalServerErrorBody,
        503 => Apifreaks::Types::ServiceUnavailableErrorBody,
        504 => Apifreaks::Types::GatewayTimeoutErrorBody
      }
      error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
      raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
    end

    # This API checks the status of a previously initiated PDF processing task using its unique task ID.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfGetTaskStatusRequestFormat, nil] :format
    # @option params [String] :task_id
    #
    # @example
    #   client.pdf_get_task_status(
    #     api_key: "apiKey",
    #     task_id: "task_id"
    #   )
    #
    # @return [Apifreaks::Types::PdfGetTaskStatusResponse]
    def pdf_get_task_status(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["task_id"] = params[:task_id] if params.key?(:task_id)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/pdf/task-status",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfGetTaskStatusResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API checks the status of a PDF file using its unique file ID, providing information about its creation and
    # potential deletion time.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfGetFileStatusRequestFormat, nil] :format
    # @option params [String] :file_id
    #
    # @example
    #   client.pdf_get_file_status(
    #     api_key: "apiKey",
    #     file_id: "file_id"
    #   )
    #
    # @return [Apifreaks::Types::PdfGetFileStatusResponse]
    def pdf_get_file_status(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/pdf/file-status",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfGetFileStatusResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API retrieves a list of all PDF files uploaded and generated by a specific user. Please note that if the user
    # is part of an organization, only the Organization Administrator can access this endpoint. Organization Members
    # cannot access this endpoint.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfListFilesRequestFormat, nil] :format
    #
    # @example
    #   client.pdf_list_files(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::PdfListFilesResponse]
    def pdf_list_files(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/pdf/files",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfListFilesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # This API deletes a PDF file using its unique file ID.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::PdfDeleteFileRequestFormat, nil] :format
    # @option params [String] :file_id
    #
    # @example
    #   client.pdf_delete_file(
    #     api_key: "apiKey",
    #     file_id: "file_id"
    #   )
    #
    # @return [Apifreaks::Types::PdfDeleteFileResponse]
    def pdf_delete_file(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["file_id"] = params[:file_id] if params.key?(:file_id)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "DELETE",
        path: "v1.0/pdf/file",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfDeleteFileResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Renders the template identified by template_id with the JSON data supplied in the request body (or fetched from
    # data_url). Returns a hosted URL for the generated PDF. Provide either a request body or a data_url; one of the two
    # is required. The keys of the data object are the fields you bound when you designed the template in the APIFreaks
    # PDF Template Builder, so the exact shape is up to you. Pin the version parameter to a specific template version
    # (e.g. version=v2) so later design changes never touch what is already live; omit it to use the latest version.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [String] :template_id
    # @option params [String, nil] :version
    # @option params [String, nil] :data_url
    #
    # @example
    #   client.pdf_generate_from_template(
    #     api_key: "apiKey",
    #     template_id: "template_id",
    #     body: {
    #       candidate_name: "Ava Thompson",
    #       candidate_title: "Senior Operations Analyst",
    #       email: "ava.thompson@example.com",
    #       phone: "+1 (555) 381-2048",
    #       city: "Austin, TX",
    #       portfolio_url: "portfolio.example.com",
    #       profile_summary: "Analytical operations professional with 8+ years of experience improving reporting pipelines, streamlining process documentation, and coordinating cross-functional delivery for distributed teams across multiple time zones.",
    #       company_name: "Northwind Logistics",
    #       job_title: "Operations Analyst",
    #       employment_period: "2021 - Present",
    #       job_achievement_1: "Led weekly KPI reporting for finance, fulfillment, and customer success stakeholders across three business units.",
    #       job_achievement_2: "Reduced manual reconciliation work by 35% through workflow redesign and documentation automation.",
    #       job_achievement_3: "Spearheaded a cross-team initiative that improved on-time delivery metrics by 18% within six months.",
    #       skills: [{
    #         skill: "Process Improvement",
    #         level: "Advanced",
    #         years: "7"
    #       }, {
    #         skill: "Stakeholder Reporting",
    #         level: "Expert",
    #         years: "8"
    #       }, {
    #         skill: "Cross-functional Coordination",
    #         level: "Advanced",
    #         years: "5"
    #       }, {
    #         skill: "Workflow Documentation",
    #         level: "Advanced",
    #         years: "6"
    #       }],
    #       degree: "B.S. in Information Systems",
    #       institution: "University of Texas",
    #       graduation_year: "2018",
    #       certification_1: "Certified Business Analysis Professional (CBAP)",
    #       certification_2: "Six Sigma Green Belt",
    #       languages: "English (Native), Spanish (Professional)"
    #     }
    #   )
    #
    # @return [Apifreaks::Types::PdfGenerateFromTemplateResponse]
    def pdf_generate_from_template(request_options: {}, **params)
      # Patched (fix_ruby_freeform_body.py): the body's keys are template field names, so
      # keep the caller's spelling instead of snake_casing them with normalize_keys.
      body_key = [:body, "body", :request, "request"].find { |key| params.key?(key) }
      if body_key
        body_value = params[body_key]
      else
        body_value = params.reject do |key, _|
          %i[api_key template_id version data_url].include?(
            Apifreaks::Internal::Types::Utils.normalize_keys({ key => nil }).keys.first
          )
        end
        body_value = nil if body_value.empty?
      end
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)

      query_param_names = %i[api_key template_id version data_url]
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["template_id"] = params[:template_id] if params.key?(:template_id)
      query_params["version"] = params[:version] if params.key?(:version)
      query_params["data_url"] = params[:data_url] if params.key?(:data_url)
      params = params.except(*query_param_names)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/template/generate",
        query: query_params,
        body: body_value,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::PdfGenerateFromTemplateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          422 => Apifreaks::Types::UnprocessableEntityErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Upload a CSV file where each row is one record. The API generates one PDF per row and returns an array of results,
    # each with its own pdf_url. Rows are processed independently, so a failure in one row does not block the rest of
    # the batch. The response gives a row-by-row breakdown of which PDFs succeeded and which failed.
    #
    # @param request_options [Hash]
    # @param params [void]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [String] :template_id
    # @option params [String, nil] :version
    #
    # @example
    #   client.bulk_pdf_generate_from_template(
    #     api_key: "apiKey",
    #     template_id: "template_id",
    #     file: "/path/to/your/file"
    #   )
    # @option params [IO, String, Pathname, Hash, Array, nil] :file A File/IO, a file path, `{io:, filename:}`, or an Array of these
    #
    # @return [Array[Apifreaks::Types::BulkPdfGenerateFromTemplateResponseItem]]
    def bulk_pdf_generate_from_template(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["template_id"] = params[:template_id] if params.key?(:template_id)
      query_params["version"] = params[:version] if params.key?(:version)

      body = Internal::Multipart::FormData.new
      body.add_file_param(name: "file", value: params[:file])

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/template/generate/bulk",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkPdfGenerateFromTemplateResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          415 => Apifreaks::Types::UnsupportedMediaTypeErrorBody,
          422 => Apifreaks::Types::UnprocessableEntityErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Capture full-page screenshots and videos of websites with advanced options like device simulation, custom code
    # injection, cookie banner blocking, and scrollable content recording.
    # Supports multiple output formats including JSON, image, GIF, MP4, and WebM.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestOutput, nil] :output
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestFileType, nil] :file_type
    # @option params [String] :url
    # @option params [Integer, nil] :width
    # @option params [Integer, nil] :height
    # @option params [Boolean, nil] :full_page
    # @option params [Boolean, nil] :fresh
    # @option params [Boolean, nil] :no_cookie_banners
    # @option params [Boolean, nil] :enable_caching
    # @option params [Boolean, nil] :block_ads
    # @option params [Boolean, nil] :block_chat_widgets
    # @option params [Boolean, nil] :extract_text
    # @option params [Boolean, nil] :extract_html
    # @option params [Boolean, nil] :destroy_screenshot
    # @option params [Boolean, nil] :lazy_load
    # @option params [Boolean, nil] :retina
    # @option params [Boolean, nil] :dark_mode
    # @option params [Boolean, nil] :block_tracking
    # @option params [Boolean, nil] :enable_incognito
    # @option params [Boolean, nil] :omit_background
    # @option params [Integer, nil] :thumbnail_width
    # @option params [Integer, nil] :adjust_top
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestWaitForEvent, nil] :wait_for_event
    # @option params [Integer, nil] :grayscale
    # @option params [Integer, nil] :delay
    # @option params [Integer, nil] :timeout
    # @option params [Integer, nil] :ttl
    # @option params [Integer, nil] :clip_x
    # @option params [Integer, nil] :clip_y
    # @option params [Integer, nil] :clip_width
    # @option params [Integer, nil] :clip_height
    # @option params [String, nil] :css_url
    # @option params [String, nil] :css
    # @option params [String, nil] :js_url
    # @option params [String, nil] :js
    # @option params [Boolean, nil] :block_js
    # @option params [Boolean, nil] :block_stylesheets
    # @option params [Boolean, nil] :block_images
    # @option params [Boolean, nil] :block_media
    # @option params [Boolean, nil] :block_font
    # @option params [Boolean, nil] :block_text_track
    # @option params [Boolean, nil] :block_xhr
    # @option params [Boolean, nil] :block_fetch
    # @option params [Boolean, nil] :block_event_source
    # @option params [Boolean, nil] :block_web_socket
    # @option params [Boolean, nil] :block_manifest
    # @option params [String, nil] :block_specific_requests
    # @option params [String, nil] :blur_selector
    # @option params [String, nil] :remove_selector
    # @option params [String, nil] :result_file_name
    # @option params [Boolean, nil] :scrolling_screenshot
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestScrollSpeed, nil] :scroll_speed
    # @option params [Boolean, nil] :scroll_back
    # @option params [Boolean, nil] :start_immediately
    # @option params [Boolean, nil] :multiple_scrolling
    # @option params [String, nil] :sizes
    # @option params [Float, nil] :duration
    # @option params [Boolean, nil] :fail_on_error
    # @option params [Float, nil] :longitude
    # @option params [Float, nil] :latitude
    # @option params [String, nil] :proxy
    # @option params [String, nil] :headers
    # @option params [String, nil] :cookies
    # @option params [String, nil] :scroll_to_element
    # @option params [String, nil] :selector
    # @option params [String, nil] :user_agent
    # @option params [String, nil] :accept_languages
    # @option params [String, nil] :custom_html
    # @option params [Float, nil] :image_quality
    # @option params [String, nil] :captcha_error
    # @option params [String, nil] :captcha_image
    # @option params [String, nil] :captcha_input
    # @option params [String, nil] :captcha_refresh
    # @option params [Integer, nil] :captcha_retries
    # @option params [String, nil] :captcha_submit
    # @option params [Boolean, nil] :classic_proxy
    # @option params [Integer, nil] :click_recursion
    # @option params [String, nil] :country
    # @option params [Boolean, nil] :extract_markdown
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestFormat, nil] :format
    # @option params [Boolean, nil] :get_image_urls
    # @option params [Boolean, nil] :gpu
    # @option params [String, nil] :markdown
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestOcrModel, nil] :ocr_model
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestPdfOptionsFormat, nil] :pdf_options_format
    # @option params [Boolean, nil] :pdf_options_landscape
    # @option params [Apifreaks::Types::ScreenshotCaptureRequestPdfOptionsMedia, nil] :pdf_options_media
    # @option params [String, nil] :pdf_options_page_range
    # @option params [Boolean, nil] :pdf_options_print_background
    # @option params [Boolean, nil] :premium_proxy
    # @option params [Integer, nil] :scroll_delay
    # @option params [String, nil] :selector_to_click
    # @option params [Boolean, nil] :solve_captcha
    # @option params [Boolean, nil] :stealth
    # @option params [String, nil] :timezone
    # @option params [Boolean, nil] :video
    #
    # @example
    #   client.screenshot_capture(
    #     api_key: "apiKey",
    #     url: "url"
    #   )
    #
    # @return [Apifreaks::Types::ScreenshotCaptureResponse]
    def screenshot_capture(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["output"] = params[:output] if params.key?(:output)
      query_params["file_type"] = params[:file_type] if params.key?(:file_type)
      query_params["url"] = params[:url] if params.key?(:url)
      query_params["width"] = params[:width] if params.key?(:width)
      query_params["height"] = params[:height] if params.key?(:height)
      query_params["full_page"] = params[:full_page] if params.key?(:full_page)
      query_params["fresh"] = params[:fresh] if params.key?(:fresh)
      query_params["no_cookie_banners"] = params[:no_cookie_banners] if params.key?(:no_cookie_banners)
      query_params["enable_caching"] = params[:enable_caching] if params.key?(:enable_caching)
      query_params["block_ads"] = params[:block_ads] if params.key?(:block_ads)
      query_params["block_chat_widgets"] = params[:block_chat_widgets] if params.key?(:block_chat_widgets)
      query_params["extract_text"] = params[:extract_text] if params.key?(:extract_text)
      query_params["extract_html"] = params[:extract_html] if params.key?(:extract_html)
      query_params["destroy_screenshot"] = params[:destroy_screenshot] if params.key?(:destroy_screenshot)
      query_params["lazy_load"] = params[:lazy_load] if params.key?(:lazy_load)
      query_params["retina"] = params[:retina] if params.key?(:retina)
      query_params["dark_mode"] = params[:dark_mode] if params.key?(:dark_mode)
      query_params["block_tracking"] = params[:block_tracking] if params.key?(:block_tracking)
      query_params["enable_incognito"] = params[:enable_incognito] if params.key?(:enable_incognito)
      query_params["omit_background"] = params[:omit_background] if params.key?(:omit_background)
      query_params["thumbnail_width"] = params[:thumbnail_width] if params.key?(:thumbnail_width)
      query_params["adjust_top"] = params[:adjust_top] if params.key?(:adjust_top)
      query_params["wait_for_event"] = params[:wait_for_event] if params.key?(:wait_for_event)
      query_params["grayscale"] = params[:grayscale] if params.key?(:grayscale)
      query_params["delay"] = params[:delay] if params.key?(:delay)
      query_params["timeout"] = params[:timeout] if params.key?(:timeout)
      query_params["ttl"] = params[:ttl] if params.key?(:ttl)
      query_params["clip[x]"] = params[:clip_x] if params.key?(:clip_x)
      query_params["clip[y]"] = params[:clip_y] if params.key?(:clip_y)
      query_params["clip[width]"] = params[:clip_width] if params.key?(:clip_width)
      query_params["clip[height]"] = params[:clip_height] if params.key?(:clip_height)
      query_params["css_url"] = params[:css_url] if params.key?(:css_url)
      query_params["css"] = params[:css] if params.key?(:css)
      query_params["js_url"] = params[:js_url] if params.key?(:js_url)
      query_params["js"] = params[:js] if params.key?(:js)
      query_params["block_js"] = params[:block_js] if params.key?(:block_js)
      query_params["block_stylesheets"] = params[:block_stylesheets] if params.key?(:block_stylesheets)
      query_params["block_images"] = params[:block_images] if params.key?(:block_images)
      query_params["block_media"] = params[:block_media] if params.key?(:block_media)
      query_params["block_font"] = params[:block_font] if params.key?(:block_font)
      query_params["block_text_track"] = params[:block_text_track] if params.key?(:block_text_track)
      query_params["block_xhr"] = params[:block_xhr] if params.key?(:block_xhr)
      query_params["block_fetch"] = params[:block_fetch] if params.key?(:block_fetch)
      query_params["block_event_source"] = params[:block_event_source] if params.key?(:block_event_source)
      query_params["block_web_socket"] = params[:block_web_socket] if params.key?(:block_web_socket)
      query_params["block_manifest"] = params[:block_manifest] if params.key?(:block_manifest)
      query_params["block_specific_requests"] = params[:block_specific_requests] if params.key?(:block_specific_requests)
      query_params["blur_selector"] = params[:blur_selector] if params.key?(:blur_selector)
      query_params["remove_selector"] = params[:remove_selector] if params.key?(:remove_selector)
      query_params["result_file_name"] = params[:result_file_name] if params.key?(:result_file_name)
      query_params["scrolling_screenshot"] = params[:scrolling_screenshot] if params.key?(:scrolling_screenshot)
      query_params["scroll_speed"] = params[:scroll_speed] if params.key?(:scroll_speed)
      query_params["scroll_back"] = params[:scroll_back] if params.key?(:scroll_back)
      query_params["start_immediately"] = params[:start_immediately] if params.key?(:start_immediately)
      query_params["multiple_scrolling"] = params[:multiple_scrolling] if params.key?(:multiple_scrolling)
      query_params["sizes"] = Array(params[:sizes]).join(",") if params.key?(:sizes)
      query_params["duration"] = params[:duration] if params.key?(:duration)
      query_params["fail_on_error"] = params[:fail_on_error] if params.key?(:fail_on_error)
      query_params["longitude"] = params[:longitude] if params.key?(:longitude)
      query_params["latitude"] = params[:latitude] if params.key?(:latitude)
      query_params["proxy"] = params[:proxy] if params.key?(:proxy)
      query_params["headers"] = params[:headers] if params.key?(:headers)
      query_params["cookies"] = params[:cookies] if params.key?(:cookies)
      query_params["scroll_to_element"] = params[:scroll_to_element] if params.key?(:scroll_to_element)
      query_params["selector"] = params[:selector] if params.key?(:selector)
      query_params["user_agent"] = params[:user_agent] if params.key?(:user_agent)
      query_params["accept_languages"] = params[:accept_languages] if params.key?(:accept_languages)
      query_params["custom_html"] = params[:custom_html] if params.key?(:custom_html)
      query_params["image_quality"] = params[:image_quality] if params.key?(:image_quality)
      query_params["captcha_error"] = params[:captcha_error] if params.key?(:captcha_error)
      query_params["captcha_image"] = params[:captcha_image] if params.key?(:captcha_image)
      query_params["captcha_input"] = params[:captcha_input] if params.key?(:captcha_input)
      query_params["captcha_refresh"] = params[:captcha_refresh] if params.key?(:captcha_refresh)
      query_params["captcha_retries"] = params[:captcha_retries] if params.key?(:captcha_retries)
      query_params["captcha_submit"] = params[:captcha_submit] if params.key?(:captcha_submit)
      query_params["classic_proxy"] = params[:classic_proxy] if params.key?(:classic_proxy)
      query_params["click_recursion"] = params[:click_recursion] if params.key?(:click_recursion)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["extract_markdown"] = params[:extract_markdown] if params.key?(:extract_markdown)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["get_image_urls"] = params[:get_image_urls] if params.key?(:get_image_urls)
      query_params["gpu"] = params[:gpu] if params.key?(:gpu)
      query_params["markdown"] = params[:markdown] if params.key?(:markdown)
      query_params["ocr_model"] = params[:ocr_model] if params.key?(:ocr_model)
      query_params["pdf_options[format]"] = params[:pdf_options_format] if params.key?(:pdf_options_format)
      query_params["pdf_options[landscape]"] = params[:pdf_options_landscape] if params.key?(:pdf_options_landscape)
      query_params["pdf_options[media]"] = params[:pdf_options_media] if params.key?(:pdf_options_media)
      query_params["pdf_options[page_range]"] = params[:pdf_options_page_range] if params.key?(:pdf_options_page_range)
      query_params["pdf_options[print_background]"] = params[:pdf_options_print_background] if params.key?(:pdf_options_print_background)
      query_params["premium_proxy"] = params[:premium_proxy] if params.key?(:premium_proxy)
      query_params["scroll_delay"] = params[:scroll_delay] if params.key?(:scroll_delay)
      query_params["selector_to_click"] = params[:selector_to_click] if params.key?(:selector_to_click)
      query_params["solve_captcha"] = params[:solve_captcha] if params.key?(:solve_captcha)
      query_params["stealth"] = params[:stealth] if params.key?(:stealth)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)
      query_params["video"] = params[:video] if params.key?(:video)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/screenshot",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ScreenshotCaptureResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          407 => Apifreaks::Types::ProxyAuthenticationRequiredErrorBody,
          408 => Apifreaks::Types::RequestTimeoutErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          444 => Apifreaks::Types::NoResponseErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Our Bulk Screenshot API allows you to capture screenshots of multiple webpages simultaneously, saving you time and
    # effort. Instead of manually capturing each page one by one, you can batch process URLs and receive high-quality
    # screenshots in the format you choose.
    #  Maximum `50 URLs` per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkScreenshotCaptureRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkScreenshotCaptureRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_screenshot_capture(
    #     api_key: "apiKey",
    #     urls: [{
    #       url: "url"
    #     }]
    #   )
    #
    # @return [Apifreaks::Types::BulkScreenshotCaptureResponse]
    def bulk_screenshot_capture(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkScreenshotCaptureRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/screenshot",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkScreenshotCaptureResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get live forex rates for all world currencies with customizable update frequency
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyLatestRatesRequestFormat, nil] :format
    # @option params [String, nil] :base
    # @option params [String, nil] :symbols
    # @option params [Apifreaks::Types::CurrencyLatestRatesRequestUpdates, nil] :updates
    #
    # @example
    #   client.currency_latest_rates(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CurrencyLatestRatesResponse]
    def currency_latest_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["updates"] = params[:updates] if params.key?(:updates)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/rates/latest",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyLatestRatesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get historical exchange rates for any specific date
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyHistoricalRatesRequestFormat, nil] :format
    # @option params [String, nil] :base
    # @option params [String, nil] :symbols
    # @option params [String] :date
    #
    # @example
    #   client.currency_historical_rates(
    #     api_key: "apiKey",
    #     date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyHistoricalRatesResponse]
    def currency_historical_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["date"] = params[:date] if params.key?(:date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/rates/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyHistoricalRatesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Convert amount between currencies using the latest exchange rates
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyConvertLatestRequestFormat, nil] :format
    # @option params [String] :from
    # @option params [String] :to
    # @option params [Float, nil] :amount
    # @option params [Apifreaks::Types::CurrencyConvertLatestRequestUpdates, nil] :updates
    #
    # @example
    #   client.currency_convert_latest(
    #     api_key: "apiKey",
    #     from: "from",
    #     to: "to"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyConvertLatestResponse]
    def currency_convert_latest(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["from"] = params[:from] if params.key?(:from)
      query_params["to"] = params[:to] if params.key?(:to)
      query_params["amount"] = params[:amount] if params.key?(:amount)
      query_params["updates"] = params[:updates] if params.key?(:updates)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/converter/latest/prices",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyConvertLatestResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Convert amount between currencies using historical rates
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyConvertHistoricalRequestFormat, nil] :format
    # @option params [String] :from
    # @option params [String] :to
    # @option params [Float, nil] :amount
    # @option params [String] :date
    #
    # @example
    #   client.currency_convert_historical(
    #     api_key: "apiKey",
    #     from: "from",
    #     to: "to",
    #     date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyConvertHistoricalResponse]
    def currency_convert_historical(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["from"] = params[:from] if params.key?(:from)
      query_params["to"] = params[:to] if params.key?(:to)
      query_params["amount"] = params[:amount] if params.key?(:amount)
      query_params["date"] = params[:date] if params.key?(:date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/converter/historical/prices",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyConvertHistoricalResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get exchange rates for a time range
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyTimeSeriesRequestFormat, nil] :format
    # @option params [String] :start_date
    # @option params [String, nil] :end_date
    # @option params [String, nil] :base
    # @option params [String, nil] :symbols
    #
    # @example
    #   client.currency_time_series(
    #     api_key: "apiKey",
    #     start_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyTimeSeriesResponse]
    def currency_time_series(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/time-series",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyTimeSeriesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get currency fluctuation data for a time period
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyFluctuationRequestFormat, nil] :format
    # @option params [String] :start_date
    # @option params [String, nil] :end_date
    # @option params [String, nil] :base
    # @option params [String, nil] :symbols
    #
    # @example
    #   client.currency_fluctuation(
    #     api_key: "apiKey",
    #     start_date: "2023-01-15",
    #     base: "USD"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyFluctuationResponse]
    def currency_fluctuation(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/fluctuation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyFluctuationResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Convert amount using user's location
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyConvertByIPRequestFormat, nil] :format
    # @option params [Apifreaks::Types::CurrencyConvertByIPRequestUpdates, nil] :updates
    # @option params [String] :from
    # @option params [String, nil] :ip
    # @option params [Float, nil] :amount
    #
    # @example
    #   client.currency_convert_by_ip(
    #     api_key: "apiKey",
    #     from: "from"
    #   )
    #
    # @return [Apifreaks::Types::CurrencyConvertByIPResponse]
    def currency_convert_by_ip(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["updates"] = params[:updates] if params.key?(:updates)
      query_params["from"] = params[:from] if params.key?(:from)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["amount"] = params[:amount] if params.key?(:amount)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/converter/ip-to-currency",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyConvertByIPResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get list of all supported currencies with their metadata
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencySupportedRequestFormat, nil] :format
    #
    # @example
    #   client.currency_supported(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CurrencySupportedResponse]
    def currency_supported(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/supported",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencySupportedResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get currency symbols and codes
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencySymbolsRequestFormat, nil] :format
    #
    # @example
    #   client.currency_symbols(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CurrencySymbolsResponse]
    def currency_symbols(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/symbols",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencySymbolsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get information about historical data availability and limits
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrencyHistoricalLimitsRequestFormat, nil] :format
    #
    # @example
    #   client.currency_historical_limits(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CurrencyHistoricalLimitsResponse]
    def currency_historical_limits(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/historical/data/limits",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrencyHistoricalLimitsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get live commodity rates with customizable update frequency
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityLatestRatesRequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [Apifreaks::Types::CommodityLatestRatesRequestUpdates] :updates
    # @option params [String, nil] :quote
    #
    # @example
    #   client.commodity_latest_rates(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     updates: "10m"
    #   )
    #
    # @return [Apifreaks::Types::CommodityLatestRatesResponse]
    def commodity_latest_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["updates"] = params[:updates] if params.key?(:updates)
      query_params["quote"] = params[:quote] if params.key?(:quote)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/rates/latest",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityLatestRatesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get historical commodity rates for a specific date
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityHistoricalRatesRequestFormat, nil] :format
    # @option params [String] :date
    # @option params [String, nil] :symbols
    #
    # @example
    #   client.commodity_historical_rates(
    #     api_key: "apiKey",
    #     date: "2023-01-15",
    #     symbols: ["symbols"]
    #   )
    #
    # @return [Apifreaks::Types::CommodityHistoricalRatesResponse]
    def commodity_historical_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/rates/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityHistoricalRatesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get commodity price fluctuation data for a time period
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityFluctuationRequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String] :start_date
    # @option params [String] :end_date
    #
    # @example
    #   client.commodity_fluctuation(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityFluctuationResponse]
    def commodity_fluctuation(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/fluctuation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityFluctuationResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get commodity rates for a time range
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommodityTimeSeriesRequestFormat, nil] :format
    # @option params [String, nil] :symbols
    # @option params [String] :start_date
    # @option params [String] :end_date
    #
    # @example
    #   client.commodity_time_series(
    #     api_key: "apiKey",
    #     symbols: ["symbols"],
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::CommodityTimeSeriesResponse]
    def commodity_time_series(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = Array(params[:symbols]).join(",") if params.key?(:symbols)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/time-series",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommodityTimeSeriesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get list of supported commodities
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CommoditySymbolsRequestFormat, nil] :format
    #
    # @example
    #   client.commodity_symbols(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CommoditySymbolsResponse]
    def commodity_symbols(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/symbols",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CommoditySymbolsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieves a list of supported countries.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::VatSupportedCountriesRequestFormat, nil] :format
    # @option params [Apifreaks::Types::VatSupportedCountriesRequestType, nil] :type
    #
    # @example
    #   client.vat_supported_countries(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::VatSupportedCountriesResponse]
    def vat_supported_countries(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["type"] = params[:type] if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/vat/supported-countries",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::VatSupportedCountriesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Fetches VAT rate based on the specified or originating IP address.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::VatRateByIPRequestFormat, nil] :format
    # @option params [String, nil] :ip_address
    #
    # @example
    #   client.vat_rate_by_ip(api_key: "apiKey")
    #
    # @return [Array[Apifreaks::Types::VatRateByIPResponseItem]]
    def vat_rate_by_ip(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ipAddress"] = params[:ip_address] if params.key?(:ip_address)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/vat/rates/ip-address",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::VatRateByIPResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Fetches VAT rates for a single country or state provided via query parameters.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::VatRateByCountryRequestFormat, nil] :format
    # @option params [String] :country
    # @option params [String, nil] :state
    #
    # @example
    #   client.vat_rate_by_country(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Array[Apifreaks::Types::VatRateByCountryResponseItem]]
    def vat_rate_by_country(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["state"] = params[:state] if params.key?(:state)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/vat/rates/country",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::VatRateByCountryResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieves VAT details for multiple countries or country-state combinations in a single request. Maximum of `100`
    # entries per request are allowed.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkVatRateByCountryRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkVatRateByCountryRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_vat_rate_by_country(
    #     api_key: "apiKey",
    #     countries: [{
    #       country: "PAK"
    #     }, {
    #       country: "United_States",
    #       state: "New_York"
    #     }]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkVatRateByCountryResponseItem]]
    def bulk_vat_rate_by_country(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkVatRateByCountryRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/vat/rates/country",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkVatRateByCountryResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates an EU or UK VAT number and returns registration status details.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::VatValidateRequestFormat, nil] :format
    # @option params [String] :vat_number
    # @option params [String, nil] :requester_vat_number
    #
    # @example
    #   client.vat_validate(
    #     api_key: "apiKey",
    #     vat_number: "vatNumber"
    #   )
    #
    # @return [Apifreaks::Types::VatValidateResponse]
    def vat_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["vatNumber"] = params[:vat_number] if params.key?(:vat_number)
      query_params["requesterVatNumber"] = params[:requester_vat_number] if params.key?(:requester_vat_number)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/vat/validation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::VatValidateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Checks an IBAN for structural validity, checksum accuracy, and bank metadata.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::IbanValidateRequestFormat, nil] :format
    # @option params [String] :iban
    #
    # @example
    #   client.iban_validate(
    #     api_key: "apiKey",
    #     iban: "iban"
    #   )
    #
    # @return [Apifreaks::Types::IbanValidateResponse]
    def iban_validate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["iban"] = params[:iban] if params.key?(:iban)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/iban/validation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::IbanValidateResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Fetches SWIFT codes for a given country, bank, and city.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::SwiftCodeFindRequestFormat, nil] :format
    # @option params [String, nil] :country
    # @option params [String, nil] :bank
    # @option params [String, nil] :city
    #
    # @example
    #   client.swift_code_find(api_key: "apiKey")
    #
    # @return [Array[String]]
    def swift_code_find(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["bank"] = params[:bank] if params.key?(:bank)
      query_params["city"] = params[:city] if params.key?(:city)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/swift-code/finder",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[String], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Fetches detailed information about a SWIFT code.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::SwiftCodeLookupRequestFormat, nil] :format
    # @option params [String] :swift_code
    #
    # @example
    #   client.swift_code_lookup(
    #     api_key: "apiKey",
    #     swift_code: "swiftCode"
    #   )
    #
    # @return [Apifreaks::Types::SwiftCodeLookupResponse]
    def swift_code_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["swiftCode"] = params[:swift_code] if params.key?(:swift_code)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/swift-code/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::SwiftCodeLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeLookupRequestFormat, nil] :format
    # @option params [String] :code
    # @option params [String, nil] :country
    #
    # @example
    #   client.zipcode_lookup(
    #     api_key: "apiKey",
    #     code: "code"
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeLookupResponse]
    def zipcode_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["code"] = params[:code] if params.key?(:code)
      query_params["country"] = params[:country] if params.key?(:country)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/zipcode/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Validates a bulk of ZIP/postal codes and returns result for each. Maximum `100` ZIP/postal codes per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkZipcodeLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkZipcodeLookupRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_zipcode_lookup(
    #     api_key: "apiKey",
    #     codes: ["codes"]
    #   )
    #
    # @return [Apifreaks::Types::BulkZipcodeLookupResponse]
    def bulk_zipcode_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkZipcodeLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/zipcode/lookup",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkZipcodeLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeSearchByCityRequestFormat, nil] :format
    # @option params [String] :city
    # @option params [String] :country
    # @option params [String, nil] :state_name
    # @option params [Integer, nil] :page
    #
    # @example
    #   client.zipcode_search_by_city(
    #     api_key: "apiKey",
    #     city: "city",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeSearchByCityResponse]
    def zipcode_search_by_city(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["city"] = params[:city] if params.key?(:city)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["state_name"] = params[:state_name] if params.key?(:state_name)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/zipcode/search/city",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeSearchByCityResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeSearchByRegionRequestFormat, nil] :format
    # @option params [String] :country
    # @option params [String, nil] :region
    # @option params [Integer, nil] :page
    # @option params [String, nil] :region_code
    #
    # @example
    #   client.zipcode_search_by_region(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeSearchByRegionResponse]
    def zipcode_search_by_region(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["region"] = params[:region] if params.key?(:region)
      query_params["page"] = params[:page] if params.key?(:page)
      query_params["region_code"] = params[:region_code] if params.key?(:region_code)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/zipcode/search/region",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeSearchByRegionResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeSearchByRadiusRequestFormat, nil] :format
    # @option params [String, nil] :code
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :country
    # @option params [Float] :radius
    # @option params [Apifreaks::Types::ZipcodeSearchByRadiusRequestUnit, nil] :unit
    # @option params [Integer, nil] :page
    #
    # @example
    #   client.zipcode_search_by_radius(
    #     api_key: "apiKey",
    #     radius: 1.1
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeSearchByRadiusResponse]
    def zipcode_search_by_radius(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["code"] = params[:code] if params.key?(:code)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["radius"] = params[:radius] if params.key?(:radius)
      query_params["unit"] = params[:unit] if params.key?(:unit)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/zipcode/search/radius",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeSearchByRadiusResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get distance between postal codes. Maximum `100` postal codes per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::ZipcodeDistanceRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeDistanceRequestFormat, nil] :format
    #
    # @example
    #   client.zipcode_distance(
    #     api_key: "apiKey",
    #     compare: ["compare"],
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeDistanceResponse]
    def zipcode_distance(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::ZipcodeDistanceRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/zipcode/distance",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeDistanceResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get matching ZIP/postal code pairs within a specified distance. Maximum `100` postal codes per request.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::ZipcodeDistanceMatchRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ZipcodeDistanceMatchRequestFormat, nil] :format
    #
    # @example
    #   client.zipcode_distance_match(
    #     api_key: "apiKey",
    #     codes: ["codes"],
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::ZipcodeDistanceMatchResponse]
    def zipcode_distance_match(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::ZipcodeDistanceMatchRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/zipcode/distance/match",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ZipcodeDistanceMatchResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get current weather data including temperature, humidity, precipitation, wind conditions, atmospheric pressure,
    # and air quality for any location. Accepts city names, coordinates, or IP addresses. Also includes astronomy data
    # and timezone-aware timestamps.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::CurrentWeatherRequestFormat, nil] :format
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.current_weather(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::CurrentWeatherResponse]
    def current_weather(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/current",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::CurrentWeatherResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve current weather conditions for up to `50 locations` in a single request. A maximum of 50 locations (city
    # names, IP addresses, or geographic coordinates) can be included in the request body.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkCurrentWeatherRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkCurrentWeatherRequestFormat, nil] :format
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.bulk_current_weather(
    #     api_key: "apiKey",
    #     locations: [{
    #       location: "lahore"
    #     }, {
    #       lat: 32.5,
    #       long: 74.5
    #     }, {
    #       ip: "8.8.8.8"
    #     }, {
    #       location: "seoul"
    #     }]
    #   )
    #
    # @return [Apifreaks::Types::BulkCurrentWeatherResponse]
    def bulk_current_weather(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkCurrentWeatherRequest.new(params).to_h
      non_body_param_names = %w[apiKey format timezone]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/weather/current",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::BulkCurrentWeatherResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Access comprehensive weather forecasts with customizable precision - choose from daily overviews, hourly
    # breakdowns, or even minute-by-minute data. Configure your date ranges or use the default 7-day forecast for
    # standard weather planning.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::WeatherForecastRequestFormat, nil] :format
    # @option params [String, nil] :start_date
    # @option params [String, nil] :end_date
    # @option params [Integer, nil] :forecast_days
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::WeatherForecastRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.weather_forecast(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::WeatherForecastResponse]
    def weather_forecast(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["forecastDays"] = params[:forecast_days] if params.key?(:forecast_days)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/forecast",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::WeatherForecastResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Access past weather conditions for specific dates with records going back to 1940. Retrieve comprehensive
    # historical data with both daily and hourly precision options.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::HistoricalWeatherRequestFormat, nil] :format
    # @option params [String] :date
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::HistoricalWeatherRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.historical_weather(
    #     api_key: "apiKey",
    #     date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::HistoricalWeatherResponse]
    def historical_weather(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::HistoricalWeatherResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Pull historical weather information for date ranges up to 90 days (daily data) or 7 days (hourly data). Get
    # consistent formatting across your specified date range with reliable historical weather patterns.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::WeatherTimeSeriesRequestFormat, nil] :format
    # @option params [String] :start_date
    # @option params [String] :end_date
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::WeatherTimeSeriesRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.weather_time_series(
    #     api_key: "apiKey",
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::WeatherTimeSeriesResponse]
    def weather_time_series(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/time-series",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::WeatherTimeSeriesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Provides hourly forecasts of marine conditions including wave heights, wave directions, wave periods, swell info,
    # sea surface temperatures, and ocean currents. Supports multiple geographical points and returns daily max wave
    # statistics for up to 7 days. Ideal for maritime planning, navigation, and coastal activities.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::MarineWeatherRequestFormat, nil] :format
    # @option params [String, nil] :start_date
    # @option params [String, nil] :end_date
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::MarineWeatherRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.marine_weather(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::MarineWeatherResponse]
    def marine_weather(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/marine",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::MarineWeatherResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Monitor and predict air quality conditions using European and US AQI standards. Track pollutant concentrations
    # including PM10, PM2.5, carbon monoxide, nitrogen dioxide, sulfur dioxide, ozone, and dust particles. Get current
    # readings plus hourly forecasts up to 5 days ahead, complete with UV index and aerosol measurements for
    # comprehensive air quality assessment.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::AirQualityRequestFormat, nil] :format
    # @option params [String, nil] :start_date
    # @option params [String, nil] :end_date
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::AirQualityRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.air_quality(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::AirQualityResponse]
    def air_quality(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/air-quality",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::AirQualityResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Provides flood forecast data for a given location, including river discharge metrics such as mean, median,
    # maximum, minimum, and percentile values (p25, p75). Requires a startDate and endDate, with the date range limited
    # to 16 days. Location can be specified using city name, latitude/longitude, or IP address.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::FloodForecastRequestFormat, nil] :format
    # @option params [String] :start_date
    # @option params [String] :end_date
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::FloodForecastRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
    #
    # @example
    #   client.flood_forecast(
    #     api_key: "apiKey",
    #     start_date: "2023-01-15",
    #     end_date: "2023-01-15"
    #   )
    #
    # @return [Apifreaks::Types::FloodForecastResponse]
    def flood_forecast(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["precision"] = params[:precision] if params.key?(:precision)
      query_params["timezone"] = params[:timezone] if params.key?(:timezone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/weather/flood",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::FloodForecastResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve countries, optionally filtered by region or subregion.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetCountriesRequestFormat, nil] :format
    # @option params [String, nil] :region
    # @option params [String, nil] :subregion
    #
    # @example
    #   client.get_countries(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GetCountriesResponse]
    def get_countries(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["region"] = params[:region] if params.key?(:region)
      query_params["subregion"] = params[:subregion] if params.key?(:subregion)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/countries",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetCountriesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetCountryDetailsRequestFormat, nil] :format
    # @option params [String] :country
    #
    # @example
    #   client.get_country_details(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::GetCountryDetailsResponse]
    def get_country_details(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/country/details",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetCountryDetailsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetRegionsRequestFormat, nil] :format
    #
    # @example
    #   client.get_regions(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GetRegionsResponse]
    def get_regions(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/regions",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetRegionsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetSubregionsRequestFormat, nil] :format
    # @option params [String, nil] :region
    #
    # @example
    #   client.get_subregions(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GetSubregionsResponse]
    def get_subregions(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["region"] = params[:region] if params.key?(:region)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/subregions",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetSubregionsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve administrative units based on ISO 3166-1 alpha-2 country code.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetAdminLevelsRequestFormat, nil] :format
    # @option params [String] :country
    #
    # @example
    #   client.get_admin_levels(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::GetAdminLevelsResponse]
    def get_admin_levels(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/admin-levels",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetAdminLevelsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve administrative divisions for a given country using ISO 3166-1 alpha-2 country codes. You can optionally
    # filter by administrative levels.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetAdminUnitsRequestFormat, nil] :format
    # @option params [String] :country
    # @option params [String, nil] :admin_level
    #
    # @example
    #   client.get_admin_units(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::GetAdminUnitsResponse]
    def get_admin_units(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["admin_level"] = Array(params[:admin_level]).join(",") if params.key?(:admin_level)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/admin-units",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetAdminUnitsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve detailed administrative unit information by country and optionally filtered by admin code.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetAdminUnitDetailsRequestFormat, nil] :format
    # @option params [String] :country
    # @option params [String] :admin_unit
    #
    # @example
    #   client.get_admin_unit_details(
    #     api_key: "apiKey",
    #     country: "country",
    #     admin_unit: "admin_unit"
    #   )
    #
    # @return [Apifreaks::Types::GetAdminUnitDetailsResponse]
    def get_admin_unit_details(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["admin_unit"] = params[:admin_unit] if params.key?(:admin_unit)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/admin-unit/details",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetAdminUnitDetailsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve a list of cities within a country, optionally filtered by an administrative unit code.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetCitiesRequestFormat, nil] :format
    # @option params [String] :country
    # @option params [String, nil] :admin_unit
    #
    # @example
    #   client.get_cities(
    #     api_key: "apiKey",
    #     country: "country"
    #   )
    #
    # @return [Apifreaks::Types::GetCitiesResponse]
    def get_cities(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["admin_unit"] = params[:admin_unit] if params.key?(:admin_unit)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/cities",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetCitiesResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Get list of all supported flags with their metadata
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    #
    # @example
    #   client.get_supported_flags(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GetSupportedFlagsResponse]
    def get_supported_flags(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/flags/supported",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetSupportedFlagsResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve the flag for a specific country
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [String] :name
    # @option params [Apifreaks::Types::GetFlagsRequestShape] :shape
    # @option params [Apifreaks::Types::GetFlagsRequestFormat, nil] :format
    # @option params [Apifreaks::Types::GetFlagsRequestSize, nil] :size
    # @option params [Apifreaks::Types::GetFlagsRequestType] :type
    #
    # @example
    #   client.get_flags(
    #     api_key: "apiKey",
    #     name: "name",
    #     shape: "flat",
    #     type: "country"
    #   )
    #
    # @return [String]
    def get_flags(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["name"] = params[:name] if params.key?(:name)
      query_params["shape"] = params[:shape] if params.key?(:shape)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["size"] = params[:size] if params.key?(:size)
      query_params["type"] = params[:type] if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/flags",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      return response.body if code.between?(200, 299)

      error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
      error_types = {
        400 => Apifreaks::Types::BadRequestErrorBody,
        401 => Apifreaks::Types::UnauthorizedErrorBody,
        402 => Apifreaks::Types::PaymentRequiredErrorBody,
        403 => Apifreaks::Types::ForbiddenErrorBody,
        406 => Apifreaks::Types::NotAcceptableErrorBody,
        413 => Apifreaks::Types::ContentTooLargeErrorBody,
        429 => Apifreaks::Types::TooManyRequestsErrorBody,
        500 => Apifreaks::Types::InternalServerErrorBody,
        503 => Apifreaks::Types::ServiceUnavailableErrorBody,
        504 => Apifreaks::Types::GatewayTimeoutErrorBody
      }
      error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
      raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
    end

    # Retrieve current time, date, and timezone-related information by specifying a timezone name, location address,
    # location coordinates, IP address, or use the client IP address if no parameter is passed.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::TimezoneLookupRequestFormat, nil] :format
    # @option params [String, nil] :ip
    # @option params [String, nil] :tz
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [Apifreaks::Types::TimezoneLookupRequestLang, nil] :lang
    # @option params [String, nil] :iata_code
    # @option params [String, nil] :icao_code
    # @option params [String, nil] :lo_code
    #
    # @example
    #   client.timezone_lookup(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::TimezoneLookupResponse]
    def timezone_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["tz"] = params[:tz] if params.key?(:tz)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["iata_code"] = params[:iata_code] if params.key?(:iata_code)
      query_params["icao_code"] = params[:icao_code] if params.key?(:icao_code)
      query_params["lo_code"] = params[:lo_code] if params.key?(:lo_code)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geolocation/timezone",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::TimezoneLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Converts a given time from one timezone to another using various input types like timezone name, coordinates,
    # location, or codes.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::TimezoneConvertRequestFormat, nil] :format
    # @option params [String, nil] :time
    # @option params [String, nil] :tz_from
    # @option params [String, nil] :tz_to
    # @option params [Float, nil] :lat_from
    # @option params [Float, nil] :long_from
    # @option params [Float, nil] :lat_to
    # @option params [Float, nil] :long_to
    # @option params [String, nil] :location_from
    # @option params [String, nil] :location_to
    # @option params [String, nil] :iata_from
    # @option params [String, nil] :iata_to
    # @option params [String, nil] :icao_from
    # @option params [String, nil] :icao_to
    # @option params [String, nil] :locode_from
    # @option params [String, nil] :locode_to
    #
    # @example
    #   client.timezone_convert(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::TimezoneConvertResponse]
    def timezone_convert(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["time"] = params[:time] if params.key?(:time)
      query_params["tz_from"] = params[:tz_from] if params.key?(:tz_from)
      query_params["tz_to"] = params[:tz_to] if params.key?(:tz_to)
      query_params["lat_from"] = params[:lat_from] if params.key?(:lat_from)
      query_params["long_from"] = params[:long_from] if params.key?(:long_from)
      query_params["lat_to"] = params[:lat_to] if params.key?(:lat_to)
      query_params["long_to"] = params[:long_to] if params.key?(:long_to)
      query_params["location_from"] = params[:location_from] if params.key?(:location_from)
      query_params["location_to"] = params[:location_to] if params.key?(:location_to)
      query_params["iata_from"] = params[:iata_from] if params.key?(:iata_from)
      query_params["iata_to"] = params[:iata_to] if params.key?(:iata_to)
      query_params["icao_from"] = params[:icao_from] if params.key?(:icao_from)
      query_params["icao_to"] = params[:icao_to] if params.key?(:icao_to)
      query_params["locode_from"] = params[:locode_from] if params.key?(:locode_from)
      query_params["locode_to"] = params[:locode_to] if params.key?(:locode_to)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/timezone/converter",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::TimezoneConvertResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Parse User Agent string to get detailed browser, device, and operating system information
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::UserAgentLookupRequestFormat, nil] :format
    #
    # @example
    #   client.user_agent_lookup(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::UserAgentLookupResponse]
    def user_agent_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      headers = {}
      headers["User-Agent"] = params[:user_agent]

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/user-agent/lookup",
        headers: headers,
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::UserAgentLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Parse up to `20000 User-Agent strings` at once in a single request; exceeding that returns a 413, not a 400.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::BulkUserAgentLookupRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::BulkUserAgentLookupRequestFormat, nil] :format
    #
    # @example
    #   client.bulk_user_agent_lookup(
    #     api_key: "apiKey",
    #     ua_strings: ["uaStrings"]
    #   )
    #
    # @return [Array[Apifreaks::Types::BulkUserAgentLookupResponseItem]]
    def bulk_user_agent_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkUserAgentLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/user-agent/lookup",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Internal::Types::Utils.coerce(Internal::Types::Array[Apifreaks::Types::BulkUserAgentLookupResponseItem], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Analyze text for grammar errors and return the exact words flagged as grammatically incorrect with zero-based word
    # positions.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::GrammarDetectRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    #
    # @example
    #   client.grammar_detect(
    #     api_key: "apiKey",
    #     text: "The global mental is health crisis is now a serious and compelex problem. It need quick and ongoing action from policymakers, healthcare workers, and the whole society."
    #   )
    #
    # @return [Apifreaks::Types::GrammarDetectResponse]
    def grammar_detect(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::GrammarDetectRequest.new(params).to_h
      non_body_param_names = %w[apiKey]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/readability/grammar/detect",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GrammarDetectResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Submit text with grammatical issues and receive a clean grammar-corrected result for proofreading and content
    # workflows.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::GrammarCorrectRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    #
    # @example
    #   client.grammar_correct(
    #     api_key: "apiKey",
    #     text: "The global mental is health crisis is now a serious and compelex problem. It need quick and ongoing action from policymakers, healthcare workers, and the whole society."
    #   )
    #
    # @return [Apifreaks::Types::GrammarCorrectResponse]
    def grammar_correct(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::GrammarCorrectRequest.new(params).to_h
      non_body_param_names = %w[apiKey]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/readability/grammar/correct",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GrammarCorrectResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Analyze text and return weak, vague, or filler words with zero-based word positions to help writers produce
    # clearer and more concise content.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::WeakWordsDetectRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    #
    # @example
    #   client.weak_words_detect(
    #     api_key: "apiKey",
    #     text: "Many people cannot get the support they need to handle their conditions well."
    #   )
    #
    # @return [Apifreaks::Types::WeakWordsDetectResponse]
    def weak_words_detect(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::WeakWordsDetectRequest.new(params).to_h
      non_body_param_names = %w[apiKey]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/readability/weak-words",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::WeakWordsDetectResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Analyze text readability using industry-standard formulas including Flesch Reading Ease, Flesch-Kincaid Grade
    # Level, Gunning Fog Index, SMOG Index, Coleman-Liau Index, and Automated Readability Index.
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::ReadabilityScoreRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::ReadabilityScoreRequestTarget, nil] :target
    # @option params [String, nil] :exclude
    #
    # @example
    #   client.readability_score(
    #     api_key: "apiKey",
    #     text: "The global mental is health crisis is now a serious and compelex problem. It needs quick and ongoing action from policymakers, healthcare workers, and the whole society."
    #   )
    #
    # @return [Apifreaks::Types::ReadabilityScoreResponse]
    def readability_score(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::ReadabilityScoreRequest.new(params).to_h
      non_body_param_names = %w[apiKey target exclude]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["target"] = params[:target] if params.key?(:target)
      query_params["exclude"] = params[:exclude] if params.key?(:exclude)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/readability/score",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::ReadabilityScoreResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Retrieve sunrise and sunset times, current position of the moon, and other related information by specifying a
    # location address, location coordinates, IP address, or using the client IP address if no parameter is passed.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::AstronomyLookupRequestFormat, nil] :format
    # @option params [String, nil] :location
    # @option params [Float, nil] :lat
    # @option params [Float, nil] :long
    # @option params [String, nil] :ip
    # @option params [String, nil] :lang
    # @option params [String, nil] :date
    # @option params [Float, nil] :elevation
    # @option params [String, nil] :time_zone
    #
    # @example
    #   client.astronomy_lookup(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::AstronomyLookupResponse]
    def astronomy_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["location"] = params[:location] if params.key?(:location)
      query_params["lat"] = params[:lat] if params.key?(:lat)
      query_params["long"] = params[:long] if params.key?(:long)
      query_params["ip"] = params[:ip] if params.key?(:ip)
      query_params["lang"] = params[:lang] if params.key?(:lang)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["elevation"] = params[:elevation] if params.key?(:elevation)
      query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geolocation/astronomy",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::AstronomyLookupResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # Returns subscription, subscription-surcharge, and one-off credit balances for the authenticated organization's
    # account.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [Apifreaks::Types::GetCreditsUsageRequestFormat, nil] :format
    #
    # @example
    #   client.get_credits_usage(api_key: "apiKey")
    #
    # @return [Apifreaks::Types::GetCreditsUsageResponse]
    def get_credits_usage(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/credits/usage/info",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        (response.body.to_s.empty? ? nil : Apifreaks::Types::GetCreditsUsageResponse.load(response.body))
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        error_types = {
          400 => Apifreaks::Types::BadRequestErrorBody,
          401 => Apifreaks::Types::UnauthorizedErrorBody,
          402 => Apifreaks::Types::PaymentRequiredErrorBody,
          403 => Apifreaks::Types::ForbiddenErrorBody,
          406 => Apifreaks::Types::NotAcceptableErrorBody,
          413 => Apifreaks::Types::ContentTooLargeErrorBody,
          429 => Apifreaks::Types::TooManyRequestsErrorBody,
          500 => Apifreaks::Types::InternalServerErrorBody,
          503 => Apifreaks::Types::ServiceUnavailableErrorBody,
          504 => Apifreaks::Types::GatewayTimeoutErrorBody
        }
        error_body = Apifreaks::Errors::ResponseError.load_error_body(code, response.body, error_types)
        raise error_class.new(response.body, code: code, body: error_body, headers: response.to_hash)
      end
    end

    # @param base_url [String, nil]
    # @param max_retries [Integer]
    # @param timeout [Numeric]
    #
    # @return [void]
    def initialize(base_url: nil, max_retries: 2, timeout: 60)
      @client = Apifreaks::Internal::Http::RawClient.new(
        base_url: base_url || Apifreaks::Environment::DEFAULT,
        headers: {},
        max_retries: max_retries,
        timeout: timeout
      )
    end
  end
end
