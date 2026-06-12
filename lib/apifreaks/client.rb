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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GeolocationLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkGeolocationLookupResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::IPSecurityLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkIPSecurityLookupResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :min_lat
    # @option params [Integer, nil] :max_lat
    # @option params [Integer, nil] :min_lon
    # @option params [Integer, nil] :max_lon
    # @option params [String, nil] :accept_language
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
      headers["Accept-Language"] = params[:accept_language] if params[:accept_language]

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geocoder/search",
        headers: headers,
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GeocoderSearchResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer] :lat
    # @option params [Integer] :lon
    # @option params [String, nil] :accept_language
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
      headers["Accept-Language"] = params[:accept_language] if params[:accept_language]

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geocoder/reverse",
        headers: headers,
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GeocoderReverseResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainWhoisLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkDomainWhoisLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::IPWhoisLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::AsnWhoisLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainWhoisHistoryResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainWhoisReverseResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::DomainDNSLookupResponse]
    def domain_dns_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["host-name"] = params[:host_name] if params.key?(:host_name)
      query_params["ipAddress"] = params[:ip_address] if params.key?(:ip_address)
      query_params["type"] = params[:type] if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/dns/live",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainDNSLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::BulkDomainDNSLookupResponse]
    def bulk_domain_dns_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::BulkDomainDNSLookupRequest.new(params).to_h
      non_body_param_names = %w[apiKey format type]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["type"] = params[:type] if params.key?(:type)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/domain/dns/live",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkDomainDNSLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::DomainDNSHistoryResponse]
    def domain_dns_history(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["host-name"] = params[:host_name] if params.key?(:host_name)
      query_params["type"] = params[:type] if params.key?(:type)
      query_params["page"] = params[:page] if params.key?(:page)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/dns/history",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainDNSHistoryResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainDNSReverseResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::WebScrapeResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::EmailValidateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkEmailValidateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PhoneValidateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkPhoneValidateResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainSslLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainSslChainLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainAvailabilityCheckResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkDomainAvailabilityCheckResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/domain/availability/suggestions",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::DomainAvailabilitySuggestionsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::SubdomainsLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfMergeResponse]
    def pdf_merge(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/merge",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfMergeResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfRemovePagesResponse]
    def pdf_remove_pages(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/remove-pages",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfRemovePagesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfSplitResponse]
    def pdf_split(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/split",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfSplitResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfRotateResponse]
    def pdf_rotate(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/rotate",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfRotateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfCompressResponse]
    def pdf_compress(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/compress",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfCompressResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfExtractPagesResponse]
    def pdf_extract_pages(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/extract-pages",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfExtractPagesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfLinearizeResponse]
    def pdf_linearize(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/linearize",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfLinearizeResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfEncryptResponse]
    def pdf_encrypt(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/encrypt",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfEncryptResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfDecryptResponse]
    def pdf_decrypt(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/decrypt",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfDecryptResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfRestrictResponse]
    def pdf_restrict(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/restrict",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfRestrictResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [String, nil] :user_password
    # @option params [String, nil] :owner_password
    # @option params [String, nil] :webhook_url
    # @option params [Boolean, nil] :webhook_failure_notification
    # @option params [String, nil] :webhook_authorization
    #
    # @return [Apifreaks::Types::PdfUnrestrictResponse]
    def pdf_unrestrict(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/unrestrict",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfUnrestrictResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfConvertToPngResponse]
    def pdf_convert_to_png(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/png",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfConvertToPngResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfConvertToJpgResponse]
    def pdf_convert_to_jpg(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/jpg",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfConvertToJpgResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfConvertToTiffResponse]
    def pdf_convert_to_tiff(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/tif",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfConvertToTiffResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfConvertToBmpResponse]
    def pdf_convert_to_bmp(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/bmp",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfConvertToBmpResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfConvertToGifResponse]
    def pdf_convert_to_gif(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/gif",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfConvertToGifResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::PdfUploadResourcesResponse]
    def pdf_upload_resources(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      body = Internal::Multipart::FormData.new

      body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

      request = Apifreaks::Internal::Multipart::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/resource/upload",
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfUploadResourcesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/pdf/resource/upload-binary",
        query: query_params,
        body: params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfUploadBinaryResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [untyped]
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        response.body
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfGetTaskStatusResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfGetFileStatusResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfListFilesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::PdfDeleteFileResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :duration
    # @option params [Boolean, nil] :fail_on_error
    # @option params [Integer, nil] :longitude
    # @option params [Integer, nil] :latitude
    # @option params [String, nil] :proxy
    # @option params [String, nil] :headers
    # @option params [String, nil] :cookies
    # @option params [String, nil] :scroll_to_element
    # @option params [String, nil] :selector
    # @option params [String, nil] :user_agent
    # @option params [String, nil] :accept_languages
    # @option params [String, nil] :custom_html
    # @option params [Integer, nil] :image_quality
    #
    # @return [untyped]
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
      query_params["sizes"] = params[:sizes] if params.key?(:sizes)
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

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/screenshot",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        response.body
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkScreenshotCaptureResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CurrencyLatestRatesResponse]
    def currency_latest_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
      query_params["updates"] = params[:updates] if params.key?(:updates)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/rates/latest",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyLatestRatesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CurrencyHistoricalRatesResponse]
    def currency_historical_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
      query_params["date"] = params[:date] if params.key?(:date)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/rates/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyHistoricalRatesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :amount
    # @option params [Apifreaks::Types::CurrencyConvertLatestRequestUpdates, nil] :updates
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyConvertLatestResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :amount
    # @option params [String] :date
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyConvertHistoricalResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CurrencyTimeSeriesResponse]
    def currency_time_series(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/time-series",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyTimeSeriesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CurrencyFluctuationResponse]
    def currency_fluctuation(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["startDate"] = params[:start_date] if params.key?(:start_date)
      query_params["endDate"] = params[:end_date] if params.key?(:end_date)
      query_params["base"] = params[:base] if params.key?(:base)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/currency/fluctuation",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyFluctuationResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :amount
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyConvertByIPResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencySupportedResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencySymbolsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrencyHistoricalLimitsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CommodityLatestRatesResponse]
    def commodity_latest_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CommodityLatestRatesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CommodityHistoricalRatesResponse]
    def commodity_historical_rates(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["date"] = params[:date] if params.key?(:date)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/commodity/rates/historical",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CommodityHistoricalRatesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CommodityFluctuationResponse]
    def commodity_fluctuation(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CommodityFluctuationResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::CommodityTimeSeriesResponse]
    def commodity_time_series(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["symbols"] = params[:symbols] if params.key?(:symbols)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CommodityTimeSeriesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CommoditySymbolsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::VatSupportedCountriesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::VatRateByIPResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::VatRateByCountryResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::BulkVatRateByCountryResponse]
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkVatRateByCountryResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::VatValidateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::IbanValidateResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        response.body
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::SwiftCodeLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkZipcodeLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeSearchByCityResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [String] :region
    # @option params [Integer, nil] :page
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

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/zipcode/search/region",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeSearchByRegionResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :country
    # @option params [Integer] :radius
    # @option params [Apifreaks::Types::ZipcodeSearchByRadiusRequestUnit, nil] :unit
    # @option params [Integer, nil] :page
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeSearchByRadiusResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeDistanceResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ZipcodeDistanceMatchResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::CurrentWeatherResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkCurrentWeatherResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::WeatherForecastRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::WeatherForecastResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::HistoricalWeatherRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::HistoricalWeatherResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::WeatherTimeSeriesRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::WeatherTimeSeriesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::MarineWeatherRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::MarineWeatherResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::AirQualityRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::AirQualityResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [Apifreaks::Types::FloodForecastRequestPrecision, nil] :precision
    # @option params [String, nil] :timezone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::FloodForecastResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetCountriesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetCountryDetailsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetRegionsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [String] :region
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetSubregionsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetAdminLevelsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [String, nil] :admin_levels
    #
    # @return [Apifreaks::Types::GetAdminUnitsResponse]
    def get_admin_units(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)
      query_params["country"] = params[:country] if params.key?(:country)
      query_params["adminLevels"] = params[:admin_levels] if params.key?(:admin_levels)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/geo/admin-units",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetAdminUnitsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetAdminUnitDetailsResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetCitiesResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Array[Apifreaks::Types::GetSupportedFlagsResponseItem]]
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GetSupportedFlagsResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [untyped]
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        response.body
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [Apifreaks::Types::TimezoneLookupRequestLang, nil] :lang
    # @option params [String, nil] :iata_code
    # @option params [String, nil] :icao_code
    # @option params [String, nil] :lo_code
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::TimezoneLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat_from
    # @option params [Integer, nil] :long_from
    # @option params [Integer, nil] :lat_to
    # @option params [Integer, nil] :long_to
    # @option params [String, nil] :location_from
    # @option params [String, nil] :location_to
    # @option params [String, nil] :iata_from
    # @option params [String, nil] :iata_to
    # @option params [String, nil] :icao_from
    # @option params [String, nil] :icao_to
    # @option params [String, nil] :locode_from
    # @option params [String, nil] :locode_to
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::TimezoneConvertResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @return [Apifreaks::Types::UserAgentLookupResponse]
    def user_agent_lookup(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["format"] = params[:format] if params.key?(:format)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "v1.0/user-agent/lookup",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::UserAgentLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Parse up to `50,000 User-Agent strings` at once in a single request.
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::BulkUserAgentLookupResponseItem.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Perform Optical Character Recognition (OCR) on images, PDFs, or ZIP archives. Supports two models: `mini-ocr-v1`
    # for CAPTCHA-optimized OCR and `ocr-v1` for general-purpose document text extraction. Supports zonal OCR to extract
    # text from specific regions of an image.
    #
    # **Notes:**
    # - The `zone` query parameter cannot be given with .pdf and .zip types as it can only be applied to single image
    # query.
    # - The `page_range` query parameter cannot be given in any other type except .pdf types.
    # - PDFs containing images in them are allowed only for processing.
    # - The `mini-ocr-v1` model doesn’t support the following query parameters:
    #     - `page_range` (.pdf types)
    #     - `zone`
    #
    # @param request_options [Hash]
    # @param params [Apifreaks::Types::OcrPredictRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :api_key
    # @option params [String, nil] :url
    # @option params [Apifreaks::Types::OcrPredictRequestModel] :model
    # @option params [String, nil] :page_range
    # @option params [String, nil] :zone
    # @option params [Integer, nil] :new_line
    #
    # @return [Apifreaks::Types::OcrPredictResponse]
    def ocr_predict(request_options: {}, **params)
      params = Apifreaks::Internal::Types::Utils.normalize_keys(params)
      request_data = Apifreaks::Types::OcrPredictRequest.new(params).to_h
      non_body_param_names = %w[apiKey url model page_range zone new_line]
      body = request_data.except(*non_body_param_names)

      query_params = {}
      query_params["apiKey"] = params[:api_key] if params.key?(:api_key)
      query_params["url"] = params[:url] if params.key?(:url)
      query_params["model"] = params[:model] if params.key?(:model)
      query_params["page_range"] = params[:page_range] if params.key?(:page_range)
      query_params["zone"] = params[:zone] if params.key?(:zone)
      query_params["new_line"] = params[:new_line] if params.key?(:new_line)

      request = Apifreaks::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "v1.0/ocr/predict",
        query: query_params,
        body: body,
        request_options: request_options
      )
      begin
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::OcrPredictResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GrammarDetectResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::GrammarCorrectResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::WeakWordsDetectResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::ReadabilityScoreResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
    # @option params [Integer, nil] :lat
    # @option params [Integer, nil] :long
    # @option params [String, nil] :ip
    # @option params [String, nil] :lang
    # @option params [String, nil] :date
    # @option params [Integer, nil] :elevation
    # @option params [String, nil] :time_zone
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
        response = @raw_client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Apifreaks::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Apifreaks::Types::AstronomyLookupResponse.load(response.body)
      else
        error_class = Apifreaks::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, max_retries: 2)
      @raw_client = Apifreaks::Internal::Http::RawClient.new(
        base_url: base_url || Apifreaks::Environment::DEFAULT,
        headers: {
          "X-Fern-Language" => "Ruby"
        },
        max_retries: max_retries
      )
    end
  end
end
