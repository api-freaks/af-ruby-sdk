# Reference
<details><summary><code>client.<a href="/lib/apifreaks/client.rb">geolocation_lookup</a>() -> Apifreaks::Types::GeolocationLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed geolocation data for an IP address including country, city, timezone, currency, and optional security and user-agent information
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.geolocation_lookup(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GeolocationLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4, IPv6, or hostname for geolocation lookup
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::GeolocationLookupRequestLang` — Response language for location fields
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma separated list of fields to include in response
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma separated list of fields to exclude from response
    
</dd>
</dl>

<dl>
<dd>

**include:** `String` — Additional data to include (location, network, security, currency, time_zone, user_agent, country_metadata , hostname, liveHostname, hostnameFallbackLivet)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_geolocation_lookup</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkGeolocationLookupResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve detailed geolocation data for multiple IP addresses in a single request.
Supports up to `50,000` IP-addresses/host-names per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_geolocation_lookup(
  api_key: "apiKey",
  ips: ["ips"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkGeolocationLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**lang:** `String` — Language of the response.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma-separated list of fields to include in the response. Can include "geo".
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma-separated list of fields to exclude from the response (except "ip").
    
</dd>
</dl>

<dl>
<dd>

**include:** `String` — Comma-separated list of additional information to include in the response.
    
</dd>
</dl>

<dl>
<dd>

**ips:** `Internal::Types::Array[String]` — List of IP addresses or hostnames to lookup
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">ip_security_lookup</a>() -> Apifreaks::Types::IPSecurityLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get comprehensive security information for a given IP address. Detects VPNs, proxies, Tor nodes, and other security threats.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ip_security_lookup(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::IPSecurityLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — A valid IPv4 or IPv6 address to look up. If omitted, the API uses the public IP of the requesting client.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma-separated list of fields to return. Supports dot notation (e.g. security.threat_score).
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma-separated list of fields to remove from the response. Supports dot notation (e.g. security.is_tor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_ip_security_lookup</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkIPSecurityLookupResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Bulk IP Security Lookup API allows you to retrieve security details for up to `50,000` IP-addresses in a single request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_ip_security_lookup(
  api_key: "apiKey",
  ips: ["ips"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkIPSecurityLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma-separated list of fields to return. Supports dot notation (e.g. security.threat_score).
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma-separated list of fields to remove from the response. Supports dot notation (e.g. security.is_tor).
    
</dd>
</dl>

<dl>
<dd>

**ips:** `Internal::Types::Array[String]` — List of IP addresses to lookup
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">geocoder_search</a>() -> Internal::Types::Array[Apifreaks::Types::GeocoderSearchResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert a given address or place name into geographic coordinates (latitude and longitude).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.geocoder_search(
  api_key: "apiKey",
  query: "query"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GeocoderSearchRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Free-form search query, e.g. Wembley Stadium, London
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Max number of results to return (1–40). May return fewer if matches are weak.
    
</dd>
</dl>

<dl>
<dd>

**min_lat:** `Integer` — Minimum latitude for the viewbox. Must be ≤ max_lat and between -90 and 90.
    
</dd>
</dl>

<dl>
<dd>

**max_lat:** `Integer` — Maximum latitude for the viewbox. Must be ≥ min_lat and between -90 and 90.
    
</dd>
</dl>

<dl>
<dd>

**min_lon:** `Integer` — Minimum longitude for the viewbox. Must be ≤ max_lon and between -180 and 180.
    
</dd>
</dl>

<dl>
<dd>

**max_lon:** `Integer` — Maximum longitude for the viewbox. Must be ≥ min_lon and between -180 and 180.
    
</dd>
</dl>

<dl>
<dd>

**accept_language:** `String` — Preferred language order for showing search results. This may either be a simple comma-separated list of language codes or a single entry. The results will be in the 1st language which is matched from the header. As a fallback if the results are not supported in the given language, 'en' will be used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">geocoder_reverse</a>() -> Apifreaks::Types::GeocoderReverseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert geographic coordinates (latitude and longitude) into a human-readable address or place name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.geocoder_reverse(
  api_key: "apiKey",
  lat: 1.1,
  lon: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GeocoderReverseRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — WGS84 latitude value ranging from -90 to 90.
    
</dd>
</dl>

<dl>
<dd>

**lon:** `Integer` — WGS84 longitude value ranging from -180 to 180.
    
</dd>
</dl>

<dl>
<dd>

**accept_language:** `String` — Preferred language order for showing search results. This may either be a simple comma-separated list of language codes or a single entry. The results will be in the 1st language which is matched from the header. As a fallback if the results are not supported in the given language, en will be used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_whois_lookup</a>() -> Apifreaks::Types::DomainWhoisLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve current WHOIS information for a domain name.
This endpoint provides detailed registration information including registrar details,
dates, nameservers, and registrant information.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_whois_lookup(
  api_key: "apiKey",
  domain_name: "domainName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainWhoisLookupRequestFormat` — Response format (defaults to json)
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — Domain name for WHOIS lookup
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_domain_whois_lookup</a>(request) -> Apifreaks::Types::BulkDomainWhoisLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve WHOIS information for `100 Domains per Request`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_domain_whois_lookup(
  api_key: "apiKey",
  domain_names: ["domainNames"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkDomainWhoisLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_names:** `Internal::Types::Array[String]` — A list of domain names for which WHOIS data is requested.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">ip_whois_lookup</a>() -> Apifreaks::Types::IPWhoisLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns WHOIS registration details for a specified IP address (IPv4 or IPv6).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ip_whois_lookup(
  api_key: "apiKey",
  ip: "ip"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::IPWhoisLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — The IP address (IPv4 or IPv6) for which WHOIS data is requested.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">asn_whois_lookup</a>() -> Apifreaks::Types::AsnWhoisLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns WHOIS registration details for a specified ASN, with or without the 'as' prefix.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.asn_whois_lookup(
  api_key: "apiKey",
  asn: "asn"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::AsnWhoisLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**asn:** `String` — The Autonomous System Number (ASN) to retrieve WHOIS data for. Can be prefixed with 'as' or not.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_whois_history</a>() -> Apifreaks::Types::DomainWhoisHistoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve historical WHOIS records for a domain name.
This endpoint provides a timeline of all recorded changes in domain registration information.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_whois_history(
  api_key: "apiKey",
  domain_name: "domainName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainWhoisHistoryRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — Domain name for historical WHOIS lookup
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_whois_reverse</a>() -> Apifreaks::Types::DomainWhoisReverseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Performs a reverse WHOIS search using one or more search parameters like keyword, email, owner, or company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_whois_reverse(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainWhoisReverseRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**keyword:** `String` — Keyword search term for reverse WHOIS by keyword (case-insensitive pattern matching).
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email search term for reverse WHOIS by email address (case-insensitive exact or regex match; * wildcard supported).
    
</dd>
</dl>

<dl>
<dd>

**owner:** `String` — Registrant or owner name for reverse WHOIS (a full-text search phrase matching technique to retrieve results).
    
</dd>
</dl>

<dl>
<dd>

**company:** `String` — Organization or company name for reverse WHOIS (full-text search phrase matching technique to retrieve results).
    
</dd>
</dl>

<dl>
<dd>

**exact:** `Internal::Types::Boolean` — Accepts 'true' or 'false'. "true" returns only records that exactly match the input (keyword, owner/registrant, or company). "false" returns all matches and is the default when omitted.
    
</dd>
</dl>

<dl>
<dd>

**mode:** `Apifreaks::Types::DomainWhoisReverseRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number for paginated results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_dns_lookup</a>() -> Apifreaks::Types::DomainDNSLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve real-time DNS records for any hostname. Supports multiple record types including A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME records.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_dns_lookup(
  api_key: "apiKey",
  type: ["type"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainDNSLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**host_name:** `String` — Hostname or URL whose DNS records are required.
    
</dd>
</dl>

<dl>
<dd>

**ip_address:** `String` — The IP address for requested DNS's PTR record. 'type' parameter must be set to 'all'.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — A comma-separated list of DNS record types for lookup. Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, or all. When ipAddress is provided, type must be "all".
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_domain_dns_lookup</a>(request) -> Apifreaks::Types::BulkDomainDNSLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Perform DNS lookups for multiple hostnames in a single request. Supports up to `100 host-names per request`
and returns DNS records including A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME records.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_domain_dns_lookup(
  api_key: "apiKey",
  type: ["type"],
  domain_names: ["domainNames"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkDomainDNSLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` 

A comma-separated list of DNS record types for lookup.
Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, or all
    
</dd>
</dl>

<dl>
<dd>

**domain_names:** `Internal::Types::Array[String]` — List of hostnames to lookup DNS records for
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_dns_history</a>() -> Apifreaks::Types::DomainDNSHistoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve historical DNS records for any hostname. Access unique historical data for A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME records,
including subdomains. Results are paginated with up to 100 unique records per page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_dns_history(
  api_key: "apiKey",
  host_name: "host-name",
  type: ["type"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainDNSHistoryRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**host_name:** `String` — Hostname or URL whose historical DNS records are required
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` 

A comma-separated list of DNS record types for lookup.
Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, or all
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number for paginated results
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_dns_reverse</a>() -> Apifreaks::Types::DomainDNSReverseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all the hostnames associated with any particular A, AAAA, MX, NS, SOA, SPF, TXT, and CNAME DNS records. For instance, you can access all the hostnames hosted on any IP/CIDR notation, all the domain names using Cloudflare name servers, and all the domain names using Google Mailbox
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_dns_reverse(
  api_key: "apiKey",
  type: "A",
  value: "value"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainDNSReverseRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Apifreaks::Types::DomainDNSReverseRequestType` 

The type of reverse DNS lookup to perform. Determines how the value parameter is interpreted:
- A: IPv4 CIDR block
- AAAA: IPv6 CIDR block
- MX: Mail provider domain
- NS: Name server provider hostname
- SOA: SOA record admin domain
- SPF/TXT: Target verification strings
- CNAME: Target hostname
    
</dd>
</dl>

<dl>
<dd>

**value:** `String` — Provide an IP or CIDR for A/AAAA lookups, or a hostname/selector for MX, NS, SOA, SPF, TXT, and CNAME queries. Wildcard regex patterns are also supported (e.g., mail.google.com, m*.google.com, _spf.g*.com, s*.g*.com).
    
</dd>
</dl>

<dl>
<dd>

**exact:** `Internal::Types::Boolean` — Accepts 'true' or 'false'. "true" returns only records that exactly match the input (NS, MX, CNAME, SOA, SPF, TXT). "false" returns all matches (default when omitted).
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to paginate through results (defaults to 1).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">web_scrape</a>(request) -> Apifreaks::Types::WebScrapeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Execute a series of web scraping instructions on a target URL. 
Supports various operations like form filling, clicking, data extraction, and CAPTCHA solving.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.web_scrape(
  api_key: "apiKey",
  url: "https://example.com",
  block_url: %w[https://example.com/ads.js https://tracker.example.com/*],
  cookies: [{
    name: "sessionid",
    value: "abc123"
  }, {
    name: "user_pref",
    value: "darkmode"
  }],
  instructions: [{
    fill: {
      place: "#username",
      value: "myuser"
    }
  }, {
    fill: {
      place: "#password",
      value: "mypassword"
    }
  }, {}, {}, {}, {}, {}]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::WebScrapeRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Target URL to scrape
    
</dd>
</dl>

<dl>
<dd>

**text:** `Internal::Types::Boolean` — Set to `true` to return the data in text format else `false` for data in html format with tags.
    
</dd>
</dl>

<dl>
<dd>

**js_enabled:** `Internal::Types::Boolean` 

Set  `true` to handle websites with JavaScript. Set `false` to handle static html websites.


 Default value is `true`.
    
</dd>
</dl>

<dl>
<dd>

**proxy:** `Apifreaks::Types::WebScrapeRequestProxy` — Use proxy for requests
    
</dd>
</dl>

<dl>
<dd>

**ssl_ignore:** `Internal::Types::Boolean` 

Ignore SSL certificate errors.


 Only works if **jsEnabled** is **true**.
    
</dd>
</dl>

<dl>
<dd>

**window_size:** `String` 

Specify the browser window size in the format 'width,height' (e.g., "1920w,1080h"). Default value is the default resolutions provided by web/browser.


 Only works if **jsEnabled** is **true**.
    
</dd>
</dl>

<dl>
<dd>

**ad_block:** `Internal::Types::Boolean` 

Set to `true` to apply ad-blocker to the specified URL else false or ignore to not apply.


 Only works if **jsEnabled** is **true**.
    
</dd>
</dl>

<dl>
<dd>

**captcha:** `Internal::Types::Boolean` 

if true user can provide captcha instructions in the instructions to solve image captchas.


  Only works if **jsEnabled** is **true**.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Apifreaks::Types::WebScrapeRequestBody` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">email_validate</a>(request) -> Apifreaks::Types::EmailValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a single email address and returns result.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.email_validate(
  api_key: "apiKey",
  email: "email"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::EmailValidateRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address to validate
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Name of the email address
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP address of the email address
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_email_validate</a>(request) -> Apifreaks::Types::BulkEmailValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a bulk of email addresses and returns result for each. Maximum `10` email addresses per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_email_validate(
  api_key: "apiKey",
  email_data: [{
    email: "email"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkEmailValidateRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**email_data:** `Internal::Types::Array[Apifreaks::Types::BulkEmailValidateRequestEmailDataItem]` — Array of email objects for bulk validation
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">phone_validate</a>(request) -> Apifreaks::Types::PhoneValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a single phone number and returns detailed metadata including carrier, line type, geolocation, time zones, and standardized formats.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.phone_validate(
  api_key: "apiKey",
  number: "+14155552671"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PhoneValidateRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object. If not provided, the API defaults to JSON format.
    
</dd>
</dl>

<dl>
<dd>

**number:** `String` — Phone number to validate. Accepts international format (+14155552671), local format (4155552671) with region, or IDD format (0014155552671) with dialer_region.
    
</dd>
</dl>

<dl>
<dd>

**region:** `String` — Two-letter ISO country code (e.g., US, GB). Required when number is in local format without + prefix. Cannot be used together with dialer_region.
    
</dd>
</dl>

<dl>
<dd>

**dialer_region:** `String` — Two-letter ISO country code indicating the country the number is being dialed from. Required when number uses IDD exit code. Cannot be used together with region.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_phone_validate</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkPhoneValidateResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates up to 100 phone numbers in a single request. Each number is processed independently — invalid entries return per-number errors without affecting the rest of the batch.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_phone_validate(
  api_key: "apiKey",
  numbers: [{
    number: "+14155552671"
  }, {
    number: "+447911123456"
  }, {
    number: "+919876543210"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkPhoneValidateRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object. If not provided, the API defaults to JSON format.
    
</dd>
</dl>

<dl>
<dd>

**numbers:** `Internal::Types::Array[Apifreaks::Types::BulkPhoneValidateRequestNumbersItem]` — Array of phone number objects. Maximum 100 per request.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_ssl_lookup</a>() -> Apifreaks::Types::DomainSslLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve comprehensive SSL certificate information without the certificate chain.
This endpoint provides detailed information about the SSL certificate including expiry dates, issuer details, and encryption methods.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_ssl_lookup(
  api_key: "apiKey",
  domain_name: "domainName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainSslLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — Domain name or URL whose SSL certificate lookup is required
    
</dd>
</dl>

<dl>
<dd>

**ssl_raw:** `Internal::Types::Boolean` — Set to true to get the raw openSSL response of the domain
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_ssl_chain_lookup</a>() -> Apifreaks::Types::DomainSslChainLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the complete SSL certificate chain from root Certificate Authority (CA) to end-user certificate.
This endpoint provides comprehensive information about each certificate in the chain.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_ssl_chain_lookup(
  api_key: "apiKey",
  domain_name: "domainName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainSslChainLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — Domain name or URL whose SSL certificate chain lookup is required
    
</dd>
</dl>

<dl>
<dd>

**ssl_raw:** `Internal::Types::Boolean` — Set to true to get the raw openSSL response for each certificate in the chain
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_availability_check</a>() -> Apifreaks::Types::DomainAvailabilityCheckResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Domain Search API is designed to simplify the process of finding available domain names across all top-level domains (TLDs) and second-level domains (SLDs).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_availability_check(
  api_key: "apiKey",
  domain: "domain"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainAvailabilityCheckRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — Domain name whose availability is to be checked.
    
</dd>
</dl>

<dl>
<dd>

**source:** `Apifreaks::Types::DomainAvailabilityCheckRequestSource` — Specify the data source for domain availability checks. Use "dns" for DNS-based lookups or "whois" for WHOIS-based lookups. By default, "dns" is used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_domain_availability_check</a>(request) -> Apifreaks::Types::BulkDomainAvailabilityCheckResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Perform Bulk Domain Availability checks using a list of domains. Supports upto `100 Domains Per Request`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_domain_availability_check(
  api_key: "apiKey",
  domain_names: ["domainNames"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkDomainAvailabilityCheckRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**source:** `Apifreaks::Types::BulkDomainAvailabilityCheckRequestSource` — Specify the data source for domain availability checks. Use "dns" for DNS-based lookups or "whois" for WHOIS-based lookups. By default, "dns" is used.
    
</dd>
</dl>

<dl>
<dd>

**domain_names:** `Internal::Types::Array[String]` — List of domain names to check.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_availability_suggestions</a>() -> Apifreaks::Types::DomainAvailabilitySuggestionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Domain Search API is designed to simplify the process of finding available domain names across all top-level domains (TLDs) and second-level domains (SLDs).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.domain_availability_suggestions(
  api_key: "apiKey",
  domain: "domain"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::DomainAvailabilitySuggestionsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — Domain name for availability and suggestions.
    
</dd>
</dl>

<dl>
<dd>

**source:** `Apifreaks::Types::DomainAvailabilitySuggestionsRequestSource` — Specify the data source for domain availability checks. Use "dns" for DNS-based lookups or "whois" for WHOIS-based lookups. By default, "dns" is used.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — Number of suggestions to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">subdomains_lookup</a>() -> Apifreaks::Types::SubdomainsLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Subdomain Lookup API is designed to retrieve subdomains related to the given domain name. It helps you explore subdomains that are available for registration or usage.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.subdomains_lookup(
  api_key: "apiKey",
  domain: "domain"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::SubdomainsLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — Domain name for availability and suggestions.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Filter subdomains seen after this date (format YYYY-MM-DD).
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Filter subdomains seen before this date( format YYYY-MM-DD).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Apifreaks::Types::SubdomainsLookupRequestStatus` — Filter subdomains by status (active or inactive).
    
</dd>
</dl>

<dl>
<dd>

**page:** `String` — Page number for paginated results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_merge</a>(request) -> Apifreaks::Types::PdfMergeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API merges multiple PDF files into a single PDF, in the order they are provided
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_merge(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfMergeRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — An array of unique file IDs referencing PDF files previously uploaded to the API Freaks server. Use this parameter to merge existing files without re-uploading them. Provide multiple IDs to merge files in the specified order.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — Specifies the desired name for the resulting merged PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_remove_pages</a>(request) -> Apifreaks::Types::PdfRemovePagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API removes a selection or range of pages from a PDF file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_remove_pages(
  api_key: "apiKey",
  pages: "pages"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfRemovePagesRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique identifier of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output PDF file after pages have been removed. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies which pages to remove from the PDF. Accepts individual page numbers (e.g., '1,7') and/or ascending page ranges (e.g., '3-5'). Use commas to separate entries and hyphens for ranges. Reverse ranges (e.g., '5-3') are not allowed. Alternatively, you may provide only one of the following keywords: 'even' (removes all even-numbered pages), 'odd' (removes all odd-numbered pages), or 'last' (removes only the last page). The keyword 'all' is not supported for this operation. Examples: '1,3-5', 'even'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_split</a>(request) -> Apifreaks::Types::PdfSplitResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API splits a PDF into multiple parts based on specified page numbers or ranges.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_split(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfSplitRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired base name for the output PDF files after splitting. If not provided, a default naming convention will be used.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` 

Defines the page numbers or ranges where the PDF should be split. Provide individual pages and/or ranges in any order (for example: "1-4,9-5,16-last"). Separate entries with commas and use hyphens for ranges.

Special keywords (use alone):

• `even` — split at every even-numbered page

• `odd` — split at every odd-numbered page

• `all` — split the PDF into single-page files

The keyword `last` can be used anywhere in the string, in combination with page numbers or ranges (for example: "5-last", "last-2", "1,last,9").

Examples:
- "1,4-2,last"
- "odd"
- "all"
- "last,2-5"

Invalid example: "1,odd" (mixing a keyword other than "last" with specific pages/ranges is not allowed). You can pass multiple pages entries to produce multiple output files.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_rotate</a>(request) -> Apifreaks::Types::PdfRotateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API rotates pages of a PDF by a specified angle (in multiples of 90 degrees).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_rotate(
  api_key: "apiKey",
  rotate: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfRotateRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output PDF file after rotation. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies which pages to rotate. Accepts individual page numbers (e.g., '1,7') and/or ascending page ranges (e.g., '3-5'). Use commas to separate entries and hyphens for ranges. Reverse ranges (e.g., '5-3') are not allowed. Alternatively, provide only one of the following keywords: 'even' (rotate all even-numbered pages), 'odd' (rotate all odd-numbered pages), 'last' (rotate only the last page), or 'all' (rotate all pages). Examples: '1,3-5', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**rotate:** `Integer` — The angle in degrees to rotate the selected pages. Must be one of the following values: 0, 90, 180, 270, -90, -180, or -270. All rotations are applied clockwise.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_compress</a>(request) -> Apifreaks::Types::PdfCompressResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API compresses a given PDF file to reduce its file size.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_compress(
  api_key: "apiKey",
  compression_level: "low"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfCompressRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — Name of the output PDF.
    
</dd>
</dl>

<dl>
<dd>

**compression_level:** `Apifreaks::Types::PdfCompressRequestCompressionLevel` — Controls how aggressively the PDF is compressed. Lower levels preserve more quality, while higher levels reduce file size more.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to true, the input file(s) will be deleted from the server immediately after the output is generated.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_extract_pages</a>(request) -> Apifreaks::Types::PdfExtractPagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API extracts specific pages or page ranges from a PDF file and returns them as a new PDF.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_extract_pages(
  api_key: "apiKey",
  pages: "pages"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfExtractPagesRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output PDF file after pages have been extracted. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies which pages to extract from the PDF. You can provide individual page numbers (e.g., '2') and/or page ranges in any order, including descending (e.g., '9-5', '16-last'). Use commas to separate entries and hyphens for ranges. You may alternatively pass only one of the special keywords: 'even' (extracts all even-numbered pages), 'odd' (extracts all odd-numbered pages), 'last' (extracts only the last page), or 'all' (extracts all pages into individual files). Examples: '2,6-3', 'even', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**separated:** `Internal::Types::Boolean` — If set to `true`, each of the specified pages will be extracted and returned as a separate PDF file.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_linearize</a>(request) -> Apifreaks::Types::PdfLinearizeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

API endpoint that linearizes any given PDF, restructuring it for faster loading and page-by-page viewing in web browsers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_linearize(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfLinearizeRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output PDF file after pages have been extracted. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_encrypt</a>(request) -> Apifreaks::Types::PdfEncryptResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API encrypts a PDF file by setting a password required to open it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_encrypt(
  api_key: "apiKey",
  user_password: "user_password"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfEncryptRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output encrypted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**file_password:** `String` — The password to unlock the input file if it is already protected. Either the owner password or user password can be provided. The owner password takes precedence. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**user_password:** `String` — Sets the user password required to open and view the encrypted PDF file. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**owner_password:** `String` — Sets the owner password for the PDF file. This password provides full access, including the ability to remove restrictions. If not provided, the `user_password` will also be used as the owner password. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_decrypt</a>(request) -> Apifreaks::Types::PdfDecryptResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API decrypts PDF files, removing all encryption, including open passwords and permission restrictions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_decrypt(
  api_key: "apiKey",
  file_password: "file_password"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfDecryptRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output decrypted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**file_password:** `String` — The password to unlock the input file if it is protected. Either the owner password or user password can be provided. The owner password takes precedence. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_restrict</a>(request) -> Apifreaks::Types::PdfRestrictResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API applies permission restrictions on a PDF file, such as disabling printing, copying, or editing. This can include password protection to enforce restrictions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_restrict(
  api_key: "apiKey",
  user_password: "user_password",
  restrictions: ["print_high"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfRestrictRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output restricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**file_password:** `String` — The password to unlock the input file if it is already secured. Provide the owner password if available; otherwise, the user password. The owner password takes precedence. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**user_password:** `String` — Sets the password users will use to open the PDF. If this is not set, only the owner password will be configured, and anyone can open the PDF file with the provided restrictions enabled. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**owner_password:** `String` — Sets the password that allows full access to the PDF (e.g., removing restrictions). If not provided, the `user_password` (if set) will also be used as the owner password. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**restrictions:** `Apifreaks::Types::PdfRestrictRequestRestrictionsItem` 

A comma-separated list of restrictions to apply to the PDF. These define what the end-user is *not* allowed to do with the PDF. Available options are:


* **print_high** – Disables high-quality printing.
* **print_low** – Disables low-resolution printing.
* **edit_document_assembly** – Prevents reordering or inserting pages.
* **fill_form_fields** – Disallows filling in PDF form fields.
* **edit_annotations** – Disables adding or modifying annotations or comments.
* **modify_content** – Prevents modifying existing content in the PDF.
* **copy_and_extract_content** – Disables copying text or images from the PDF.
* **use_accessibility** – Prevents screen readers or accessibility tools from accessing content.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_unrestrict</a>(request) -> Apifreaks::Types::PdfUnrestrictResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API removes permission restrictions from a PDF while keeping it encrypted. If you want to remove all security (including encryption), use the `/pdf/decrypt` endpoint instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_unrestrict(
  api_key: "apiKey",
  file_password: "file_password"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfUnrestrictRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**file_password:** `String` — The password to unlock the input file. Either the owner password or user password can be provided. The owner password takes precedence. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**user_password:** `String` — Sets the user password for the PDF file. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**owner_password:** `String` — Sets the owner password for the PDF file. If the owner password is not provided, the `user_password` will also be used as the owner password. Password Length should be between 6 and 128 characters.
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_convert_to_png</a>(request) -> Apifreaks::Types::PdfConvertToPngResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API converts a given PDF file into a sequence of PNG images.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_convert_to_png(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfConvertToPngRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies the pages or ranges at which to split the PDF. Accepts individual page numbers (e.g., '1') and/or page ranges (e.g., '4-2', 'last'). Ranges can be ascending or descending. Use commas to separate entries and hyphens for ranges. Alternatively, provide only one of the following keywords: 'even' (split at every even-numbered page), 'odd' (split at every odd-numbered page), 'last' (split at the last page only), or 'all' (split into single pages). Examples: '1,4-2,last', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Integer` — Specifies the resolution (in DPI) for the output images. Acceptable Range is from 20 to 1200.
    
</dd>
</dl>

<dl>
<dd>

**image_smoothing:** `String` — Determines the smoothing options to apply during image conversion. Valid values are 'none', 'all' or a combination of 'text', 'line', and 'image' (comma-separated).If not provided, no smoothing will be applied.
    
</dd>
</dl>

<dl>
<dd>

**profile:** `Apifreaks::Types::PdfConvertToPngRequestProfile` — Specifies the color profile for the output PNG images. Acceptable values: bw (1-bit black & white, smallest size, no grayscale or color), gray (8-bit grayscale), rgb (24-bit RGB color, default), rgba (32-bit RGB color with alpha channel for transparency), 4-bit (4-bit indexed color, up to 16 colors, smaller size), or 8-bit (8-bit indexed color, up to 256 colors).
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_convert_to_jpg</a>(request) -> Apifreaks::Types::PdfConvertToJpgResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API converts a given PDF file into a sequence of JPG images.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_convert_to_jpg(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfConvertToJpgRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**quality:** `Integer` — Controls JPG compression quality. Higher values yield sharper images with larger file sizes.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies the pages or ranges at which to split the PDF. Accepts individual page numbers (e.g., '1') and/or page ranges (e.g., '4-2', 'last'). Ranges can be ascending or descending. Use commas to separate entries and hyphens for ranges. Alternatively, provide only one of the following keywords: 'even' (split at every even-numbered page), 'odd' (split at every odd-numbered page), 'last' (split at the last page only), or 'all' (split into single pages). Examples: '1,4-2,last', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Integer` — Specifies the resolution (in DPI) for the output images. Acceptable Range is from 20 to 1200.
    
</dd>
</dl>

<dl>
<dd>

**image_smoothing:** `String` — Determines the smoothing options to apply during image conversion. Valid values are 'none', 'all' or a combination of 'text', 'line', and 'image' (comma-separated).If not provided, no smoothing will be applied.
    
</dd>
</dl>

<dl>
<dd>

**profile:** `Apifreaks::Types::PdfConvertToJpgRequestProfile` — Specifies the color profile for the output PNG images. Acceptable values: bw (1-bit black & white, smallest size, no grayscale or color), gray (8-bit grayscale), rgb (24-bit RGB color, default), rgba (32-bit RGB color with alpha channel for transparency), 4-bit (4-bit indexed color, up to 16 colors, smaller size), or 8-bit (8-bit indexed color, up to 256 colors).
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_convert_to_tiff</a>(request) -> Apifreaks::Types::PdfConvertToTiffResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API converts a given PDF file into a sequence of TIFF images. The output images can be saved as a single TIFF file, or as a sequence of TIFF files.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_convert_to_tiff(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfConvertToTiffRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies the pages or ranges at which to split the PDF. Accepts individual page numbers (e.g., '1') and/or page ranges (e.g., '4-2', 'last'). Ranges can be ascending or descending. Use commas to separate entries and hyphens for ranges. Alternatively, provide only one of the following keywords: 'even' (split at every even-numbered page), 'odd' (split at every odd-numbered page), 'last' (split at the last page only), or 'all' (split into single pages). Examples: '1,4-2,last', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Integer` — Specifies the resolution (in DPI) for the output images. Acceptable Range is from 20 to 1200.
    
</dd>
</dl>

<dl>
<dd>

**image_smoothing:** `String` — Determines the smoothing options to apply during image conversion. Valid values are 'none', 'all' or a combination of 'text', 'line', and 'image' (comma-separated).If not provided, no smoothing will be applied.
    
</dd>
</dl>

<dl>
<dd>

**profile:** `Apifreaks::Types::PdfConvertToTiffRequestProfile` — Specifies the color profile for the output PNG images. Acceptable values: bw (1-bit black & white, smallest size, no grayscale or color), gray (8-bit grayscale), rgb (24-bit RGB color, default), rgba (32-bit RGB color with alpha channel for transparency), 4-bit (4-bit indexed color, up to 16 colors, smaller size), or 8-bit (8-bit indexed color, up to 256 colors).
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_convert_to_bmp</a>(request) -> Apifreaks::Types::PdfConvertToBmpResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Converts a PDF file to a BMP image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_convert_to_bmp(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfConvertToBmpRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies the pages or ranges at which to split the PDF. Accepts individual page numbers (e.g., '1') and/or page ranges (e.g., '4-2', 'last'). Ranges can be ascending or descending. Use commas to separate entries and hyphens for ranges. Alternatively, provide only one of the following keywords: 'even' (split at every even-numbered page), 'odd' (split at every odd-numbered page), 'last' (split at the last page only), or 'all' (split into single pages). Examples: '1,4-2,last', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Integer` — Specifies the resolution (in DPI) for the output images. Acceptable Range is from 20 to 1200.
    
</dd>
</dl>

<dl>
<dd>

**image_smoothing:** `String` — Determines the smoothing options to apply during image conversion. Valid values are 'none', 'all' or a combination of 'text', 'line', and 'image' (comma-separated).If not provided, no smoothing will be applied.
    
</dd>
</dl>

<dl>
<dd>

**profile:** `Apifreaks::Types::PdfConvertToBmpRequestProfile` — Specifies the color profile for the output PNG images. Acceptable values: bw (1-bit black & white, smallest size, no grayscale or color), gray (8-bit grayscale), rgb (24-bit RGB color, default), rgba (32-bit RGB color with alpha channel for transparency), 4-bit (4-bit indexed color, up to 16 colors, smaller size), or 8-bit (8-bit indexed color, up to 256 colors).
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_convert_to_gif</a>(request) -> Apifreaks::Types::PdfConvertToGifResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API converts a given PDF file into a sequence of GIF images.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_convert_to_gif(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfConvertToGifRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of a PDF file already uploaded to the API Freaks server. Use this as an alternative to uploading a new file directly.
    
</dd>
</dl>

<dl>
<dd>

**destroy:** `Internal::Types::Boolean` — If set to `true`, the input file(s) will be permanently deleted from the server immediately after the output PDF is generated.
    
</dd>
</dl>

<dl>
<dd>

**output:** `String` — The desired name for the output unrestricted PDF file. If not provided, a default name will be assigned.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `String` — Specifies the pages or ranges at which to split the PDF. Accepts individual page numbers (e.g., '1') and/or page ranges (e.g., '4-2', 'last'). Ranges can be ascending or descending. Use commas to separate entries and hyphens for ranges. Alternatively, provide only one of the following keywords: 'even' (split at every even-numbered page), 'odd' (split at every odd-numbered page), 'last' (split at the last page only), or 'all' (split into single pages). Examples: '1,4-2,last', 'odd', 'all'. Mixing special keywords with specific pages/ranges is not allowed.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Integer` — Specifies the resolution (in DPI) for the output images. Acceptable Range is from 20 to 1200.
    
</dd>
</dl>

<dl>
<dd>

**image_smoothing:** `String` — Determines the smoothing options to apply during image conversion. Valid values are 'none', 'all' or a combination of 'text', 'line', and 'image' (comma-separated).If not provided, no smoothing will be applied.
    
</dd>
</dl>

<dl>
<dd>

**profile:** `Apifreaks::Types::PdfConvertToGifRequestProfile` — Specifies the color profile for the output PNG images. Acceptable values: bw (1-bit black & white, smallest size, no grayscale or color), gray (8-bit grayscale), rgb (24-bit RGB color, default), rgba (32-bit RGB color with alpha channel for transparency), 4-bit (4-bit indexed color, up to 16 colors, smaller size), or 8-bit (8-bit indexed color, up to 256 colors).
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — The URL to which the webhook notification will be sent after the task is completed.
    
</dd>
</dl>

<dl>
<dd>

**webhook_failure_notification:** `Internal::Types::Boolean` — If true, a notification will also be sent by email in case the webhook request fails all the retries.  The email notification will be sent to the requesting user or their organization’s admin if part of one.
    
</dd>
</dl>

<dl>
<dd>

**webhook_authorization:** `String` — Optional custom header for webhook requests. Format: `Key:Value` (e.g., `Authorization:Bearer token123`). This will be sent as an HTTP header in the webhook call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_upload_resources</a>(request) -> Apifreaks::Types::PdfUploadResourcesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API uploads multiple PDF files to the API Freaks server and generates their unique file IDs.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_upload_resources(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfUploadResourcesRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_download_resource</a>() -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API downloads PDF files or ZIP archives from the server using their unique resource ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_download_resource(
  api_key: "apiKey",
  resource_id: "resource_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfDownloadResourceRequestFormat` 
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — The unique identifier of the file or ZIP archive to download.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_get_task_status</a>() -> Apifreaks::Types::PdfGetTaskStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API checks the status of a previously initiated PDF processing task using its unique task ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_get_task_status(
  api_key: "apiKey",
  task_id: "task_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfGetTaskStatusRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**task_id:** `String` — The unique ID of the PDF processing task for which the status is requested.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_get_file_status</a>() -> Apifreaks::Types::PdfGetFileStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API checks the status of a PDF file using its unique file ID, providing information about its creation and potential deletion time.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_get_file_status(
  api_key: "apiKey",
  file_id: "file_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfGetFileStatusRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of the file whose status is requested.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_list_files</a>() -> Apifreaks::Types::PdfListFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API retrieves a list of all PDF files uploaded and generated by a specific user. Please note that if the user is part of an organization, only the Organization Administrator can access this endpoint. Organization Members cannot access this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_list_files(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfListFilesRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_delete_file</a>() -> Apifreaks::Types::PdfDeleteFileResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API deletes a PDF file using its unique file ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.pdf_delete_file(
  api_key: "apiKey",
  file_id: "file_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfDeleteFileRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The unique ID of the file to be deleted.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">screenshot_capture</a>() -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Capture full-page screenshots and videos of websites with advanced options like device simulation, custom code injection, cookie banner blocking, and scrollable content recording.
Supports multiple output formats including JSON, image, GIF, MP4, and WebM.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.screenshot_capture(
  api_key: "apiKey",
  url: "url"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**output:** `Apifreaks::Types::ScreenshotCaptureRequestOutput` — Output format for screenshot results
    
</dd>
</dl>

<dl>
<dd>

**file_type:** `Apifreaks::Types::ScreenshotCaptureRequestFileType` — File type for screenshot output
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — URLs to capture screenshots of
    
</dd>
</dl>

<dl>
<dd>

**width:** `Integer` — Browser viewport width in pixels
    
</dd>
</dl>

<dl>
<dd>

**height:** `Integer` — Browser viewport height in pixels
    
</dd>
</dl>

<dl>
<dd>

**full_page:** `Internal::Types::Boolean` — Capture a full-page screenshot
    
</dd>
</dl>

<dl>
<dd>

**fresh:** `Internal::Types::Boolean` — Bypass cache and take a fresh screenshot
    
</dd>
</dl>

<dl>
<dd>

**no_cookie_banners:** `Internal::Types::Boolean` — Remove cookie banners from the screenshot
    
</dd>
</dl>

<dl>
<dd>

**enable_caching:** `Internal::Types::Boolean` — Enable caching for repeated requests
    
</dd>
</dl>

<dl>
<dd>

**block_ads:** `Internal::Types::Boolean` — Block advertisements on the page
    
</dd>
</dl>

<dl>
<dd>

**block_chat_widgets:** `Internal::Types::Boolean` — Block chat widget scripts from loading
    
</dd>
</dl>

<dl>
<dd>

**extract_text:** `Internal::Types::Boolean` — Extract visible text from the page
    
</dd>
</dl>

<dl>
<dd>

**extract_html:** `Internal::Types::Boolean` — Extract HTML content of the page
    
</dd>
</dl>

<dl>
<dd>

**destroy_screenshot:** `Internal::Types::Boolean` — Auto-destroy screenshot after fetch
    
</dd>
</dl>

<dl>
<dd>

**lazy_load:** `Internal::Types::Boolean` — Enable lazy-loading content before screenshot
    
</dd>
</dl>

<dl>
<dd>

**retina:** `Internal::Types::Boolean` — Capture screenshot in high-DPI (Retina) mode
    
</dd>
</dl>

<dl>
<dd>

**dark_mode:** `Internal::Types::Boolean` — Render page in dark mode
    
</dd>
</dl>

<dl>
<dd>

**block_tracking:** `Internal::Types::Boolean` — Block common user-tracking scripts
    
</dd>
</dl>

<dl>
<dd>

**enable_incognito:** `Internal::Types::Boolean` — Enable private/incognito mode for browser session
    
</dd>
</dl>

<dl>
<dd>

**omit_background:** `Internal::Types::Boolean` — Omit background color (transparent background)
    
</dd>
</dl>

<dl>
<dd>

**thumbnail_width:** `Integer` — Thumbnail width in pixels
    
</dd>
</dl>

<dl>
<dd>

**adjust_top:** `Integer` — Adjust top in pixels
    
</dd>
</dl>

<dl>
<dd>

**wait_for_event:** `Apifreaks::Types::ScreenshotCaptureRequestWaitForEvent` — Wait for a specific load event before capturing the screenshot.
    
</dd>
</dl>

<dl>
<dd>

**grayscale:** `Integer` — Range:0 to 100 for grayscale filter
    
</dd>
</dl>

<dl>
<dd>

**delay:** `Integer` — How many milliseconds to wait before taking the screenshot
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Maximum timeout in milliseconds. Defalut is `10,000`
    
</dd>
</dl>

<dl>
<dd>

**ttl:** `Integer` — Number of seconds the screenshot should be cached
    
</dd>
</dl>

<dl>
<dd>

**clip_x:** `Integer` — X position of the clipping rectangle in pixels
    
</dd>
</dl>

<dl>
<dd>

**clip_y:** `Integer` — Y position of the clipping rectangle in pixels
    
</dd>
</dl>

<dl>
<dd>

**clip_width:** `Integer` — Width of the clipping rectangle in pixels
    
</dd>
</dl>

<dl>
<dd>

**clip_height:** `Integer` — Height of the clipping rectangle in pixels
    
</dd>
</dl>

<dl>
<dd>

**css_url:** `String` — URL to CSS file
    
</dd>
</dl>

<dl>
<dd>

**css:** `String` — Your custom CSS code
    
</dd>
</dl>

<dl>
<dd>

**js_url:** `String` — URL to JS file
    
</dd>
</dl>

<dl>
<dd>

**js:** `String` — Your JS code
    
</dd>
</dl>

<dl>
<dd>

**block_js:** `Internal::Types::Boolean` — Block Scripts
    
</dd>
</dl>

<dl>
<dd>

**block_stylesheets:** `Internal::Types::Boolean` — Block Stylesheets
    
</dd>
</dl>

<dl>
<dd>

**block_images:** `Internal::Types::Boolean` — Block Images
    
</dd>
</dl>

<dl>
<dd>

**block_media:** `Internal::Types::Boolean` — Block Media
    
</dd>
</dl>

<dl>
<dd>

**block_font:** `Internal::Types::Boolean` — Block Fonts
    
</dd>
</dl>

<dl>
<dd>

**block_text_track:** `Internal::Types::Boolean` — Block Text Tracks
    
</dd>
</dl>

<dl>
<dd>

**block_xhr:** `Internal::Types::Boolean` — Block XHR Requests
    
</dd>
</dl>

<dl>
<dd>

**block_fetch:** `Internal::Types::Boolean` — Block Fetch Requests
    
</dd>
</dl>

<dl>
<dd>

**block_event_source:** `Internal::Types::Boolean` — Block Event Source
    
</dd>
</dl>

<dl>
<dd>

**block_web_socket:** `Internal::Types::Boolean` — Block Web Sockets
    
</dd>
</dl>

<dl>
<dd>

**block_manifest:** `Internal::Types::Boolean` — Block Manifest
    
</dd>
</dl>

<dl>
<dd>

**block_specific_requests:** `String` — Comma- or newline-separated list of specific requests to block. Each line and comma are treated as separate requests for processing. Example: https://example.com, https://example.js
    
</dd>
</dl>

<dl>
<dd>

**blur_selector:** `String` 

Comma-separated list of indexed CSS selectors to blur.
Format: `index:<selector>`, e.g., `0:.banner,1:#ads`.
    
</dd>
</dl>

<dl>
<dd>

**remove_selector:** `String` 

Comma-separated list of indexed CSS selectors to blur.
Format: `index:<selector>`, e.g., `0:.banner,1:#ads`.
    
</dd>
</dl>

<dl>
<dd>

**result_file_name:** `String` 

Specify a meaningful & unique file name to easily identify the screenshot result.
Avoid using spaces or special characters; use hyphens or underscores to separate words.
    
</dd>
</dl>

<dl>
<dd>

**scrolling_screenshot:** `Internal::Types::Boolean` — **`Scrolling Screenshot`**: Capture a long scrolling screenshot. When true, disable `fullPage` and `freshScreenshot`.
    
</dd>
</dl>

<dl>
<dd>

**scroll_speed:** `Apifreaks::Types::ScreenshotCaptureRequestScrollSpeed` — Speed of scrolling during the screenshot.
    
</dd>
</dl>

<dl>
<dd>

**scroll_back:** `Internal::Types::Boolean` — If true, the scroll will reverse back to the top after reaching the bottom.
    
</dd>
</dl>

<dl>
<dd>

**start_immediately:** `Internal::Types::Boolean` — If true, the scrolling capture will start immediately upon page load.
    
</dd>
</dl>

<dl>
<dd>

**multiple_scrolling:** `Internal::Types::Boolean` — If true, multiple scrolling screenshots will be taken at different viewport sizes.
    
</dd>
</dl>

<dl>
<dd>

**sizes:** `String` — Comma-separated list of viewport sizes in the format index:XXw:YYh. Example: sizes=0:120w:300h,1:240w:500h
    
</dd>
</dl>

<dl>
<dd>

**duration:** `Integer` — Duration in seconds for the scrolling capture. Acceptable range: 0 to 100 seconds.
    
</dd>
</dl>

<dl>
<dd>

**fail_on_error:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**longitude:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**latitude:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**proxy:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**headers:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cookies:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scroll_to_element:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**selector:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_agent:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**accept_languages:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**custom_html:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**image_quality:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_screenshot_capture</a>(request) -> Apifreaks::Types::BulkScreenshotCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Our Bulk Screenshot API allows you to capture screenshots of multiple webpages simultaneously, saving you time and effort. Instead of manually capturing each page one by one, you can batch process URLs and receive high-quality screenshots in the format you choose.
 Maximum `50 URLs` per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_screenshot_capture(
  api_key: "apiKey",
  urls: [{
    url: "url"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkScreenshotCaptureRequestFormat` 
    
</dd>
</dl>

<dl>
<dd>

**urls:** `Internal::Types::Array[Apifreaks::Types::BulkScreenshotCaptureRequestURLsItem]` — List of website URLs to capture screenshots of
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_latest_rates</a>() -> Apifreaks::Types::CurrencyLatestRatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get live forex rates for all world currencies with customizable update frequency
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_latest_rates(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyLatestRatesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**base:** `String` — Base currency for rate calculations
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma separated list of desired currency codes
    
</dd>
</dl>

<dl>
<dd>

**updates:** `Apifreaks::Types::CurrencyLatestRatesRequestUpdates` — Exchange rates update period (1d=daily, 1h=hourly, 10m=10 minutes, 1m=1 minute)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_historical_rates</a>() -> Apifreaks::Types::CurrencyHistoricalRatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get historical exchange rates for any specific date
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_historical_rates(
  api_key: "apiKey",
  date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyHistoricalRatesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**base:** `String` — Base currency for rate calculations
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma separated list of desired currency codes
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Specific date in YYYY-MM-DD format
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_convert_latest</a>() -> Apifreaks::Types::CurrencyConvertLatestResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert amount between currencies using the latest exchange rates
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_convert_latest(
  api_key: "apiKey",
  from: "from",
  to: "to"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyConvertLatestRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Source currency code
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Target currency code
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — Amount to convert
    
</dd>
</dl>

<dl>
<dd>

**updates:** `Apifreaks::Types::CurrencyConvertLatestRequestUpdates` — Exchange rates update period (1d=daily, 1h=hourly, 10m=10 minutes, 1m=1 minute)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_convert_historical</a>() -> Apifreaks::Types::CurrencyConvertHistoricalResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert amount between currencies using historical rates
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_convert_historical(
  api_key: "apiKey",
  from: "from",
  to: "to",
  date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyConvertHistoricalRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — From currency symbol
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — To currency symbol
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — The Amount to be converted
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — specific date (format YYYY-MM-DD) of which exchange rates is used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_time_series</a>() -> Apifreaks::Types::CurrencyTimeSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get exchange rates for a time range
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_time_series(
  api_key: "apiKey",
  start_date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyTimeSeriesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date (format YYYY-MM-DD) of the preferred time frame
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date (format YYYY-MM-DD) of the preferred time frame
    
</dd>
</dl>

<dl>
<dd>

**base:** `String` — Base currency
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — comma separated list of desired currencies/ commodities symbols
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_fluctuation</a>() -> Apifreaks::Types::CurrencyFluctuationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get currency fluctuation data for a time period
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_fluctuation(
  api_key: "apiKey",
  start_date: "2023-01-15",
  base: "USD"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyFluctuationRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date (format YYYY-MM-DD) of the preferred time frame
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date (format YYYY-MM-DD) of the preferred time frame
    
</dd>
</dl>

<dl>
<dd>

**base:** `String` — Base currency
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — comma separated list of desired currencies/ commodities symbols
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_convert_by_ip</a>() -> Apifreaks::Types::CurrencyConvertByIPResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert amount using user's location
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_convert_by_ip(
  api_key: "apiKey",
  from: "from"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyConvertByIPRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**updates:** `Apifreaks::Types::CurrencyConvertByIPRequestUpdates` — Exchange rates update period (1d=daily, 1h=hourly, 10m=10 minutes, 1m=1 minute)
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — From currency symbol
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4 or IPv6 geolocated currency
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — Amount to convert
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_supported</a>() -> Apifreaks::Types::CurrencySupportedResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of all supported currencies with their metadata
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_supported(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencySupportedRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_symbols</a>() -> Apifreaks::Types::CurrencySymbolsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get currency symbols and codes
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_symbols(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencySymbolsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">currency_historical_limits</a>() -> Apifreaks::Types::CurrencyHistoricalLimitsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about historical data availability and limits
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.currency_historical_limits(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrencyHistoricalLimitsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_latest_rates</a>() -> Apifreaks::Types::CommodityLatestRatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get live commodity rates with customizable update frequency
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.commodity_latest_rates(
  api_key: "apiKey",
  symbols: ["symbols"],
  updates: "10m"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CommodityLatestRatesRequestFormat` — Format of the Response
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma separated list of desired commodities symbols *(e.g. XAU,XAG,WTI,BRENT)* **Required**
    
</dd>
</dl>

<dl>
<dd>

**updates:** `Apifreaks::Types::CommodityLatestRatesRequestUpdates` — Exchange rates update period. Possible values are: (1) `10m` - 10 minute update (2) `1m` - 1 minute update **Required**
    
</dd>
</dl>

<dl>
<dd>

**quote:** `String` — Specifies the target currency for the exchange rate; default quote currency is the market currency of commodity *(e.g. USD, EUR, INR)*
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_historical_rates</a>() -> Apifreaks::Types::CommodityHistoricalRatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get historical commodity rates for a specific date
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.commodity_historical_rates(
  api_key: "apiKey",
  date: "2023-01-15",
  symbols: ["symbols"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CommodityHistoricalRatesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Historical date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_fluctuation</a>() -> Apifreaks::Types::CommodityFluctuationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get commodity price fluctuation data for a time period
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.commodity_fluctuation(
  api_key: "apiKey",
  symbols: ["symbols"],
  start_date: "2023-01-15",
  end_date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CommodityFluctuationRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_time_series</a>() -> Apifreaks::Types::CommodityTimeSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get commodity rates for a time range
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.commodity_time_series(
  api_key: "apiKey",
  symbols: ["symbols"],
  start_date: "2023-01-15",
  end_date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CommodityTimeSeriesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_symbols</a>() -> Apifreaks::Types::CommoditySymbolsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of supported commodities
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.commodity_symbols(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CommoditySymbolsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">vat_supported_countries</a>() -> Apifreaks::Types::VatSupportedCountriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of supported countries.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vat_supported_countries(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::VatSupportedCountriesRequestFormat` — Format of the response. Default is JSON.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Apifreaks::Types::VatSupportedCountriesRequestType` — Type of supported country. Supported values: IBAN, SWIFT, VAT. By default, it returns all supported countries for all types.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">vat_rate_by_ip</a>() -> Internal::Types::Array[Apifreaks::Types::VatRateByIPResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches VAT rate based on the specified or originating IP address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vat_rate_by_ip(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::VatRateByIPRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**ip_address:** `String` — IPv4 or IPv6 address to look up VAT rate for. If omitted, the originating IP address will be used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">vat_rate_by_country</a>() -> Internal::Types::Array[Apifreaks::Types::VatRateByCountryResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches VAT rates for a single country or state provided via query parameters.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vat_rate_by_country(
  api_key: "apiKey",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::VatRateByCountryRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country identifier in Alpha-2 (PK), Alpha-3 (PAK), or full name (Pakistan). Combine with the optional "state" query for sub-national VAT; values are case-insensitive and may use underscores instead of spaces.
    
</dd>
</dl>

<dl>
<dd>

**state:** `String` — Optional state or region in Alpha-2 (NY) or full name (New_York). Use with "country" for state-level VAT; values are case-insensitive and may use underscores.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_vat_rate_by_country</a>(request) -> Apifreaks::Types::BulkVatRateByCountryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves VAT details for multiple countries or country-state combinations in a single request. Maximum of `100` entries per request are allowed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_vat_rate_by_country(
  api_key: "apiKey",
  countries: [{
    country: "PAK"
  }, {
    country: "United_States",
    state: "New_York"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkVatRateByCountryRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**countries:** `Internal::Types::Array[Apifreaks::Types::BulkVatRateByCountryRequestCountriesItem]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">vat_validate</a>() -> Apifreaks::Types::VatValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates an EU or UK VAT number and returns registration status details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vat_validate(
  api_key: "apiKey",
  vat_number: "vatNumber"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::VatValidateRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**vat_number:** `String` — EU or UK VAT number to validate.
    
</dd>
</dl>

<dl>
<dd>

**requester_vat_number:** `String` — Requester EU or UK VAT number.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">iban_validate</a>() -> Apifreaks::Types::IbanValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks an IBAN for structural validity, checksum accuracy, and bank metadata.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.iban_validate(
  api_key: "apiKey",
  iban: "iban"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::IbanValidateRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**iban:** `String` — IBAN to validate.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">swift_code_find</a>() -> Internal::Types::Array[String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches SWIFT codes for a given country, bank, and city.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swift_code_find(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::SwiftCodeFindRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country name (accepts full name, e.g., Pakistan, United States). If only the country parameter is supplied, lists all banks in the country.
    
</dd>
</dl>

<dl>
<dd>

**bank:** `String` — Bank name (upper case) used to filter SWIFT codes. Should be used together with the country parameter. If only country and bank are provided (without city), returns the list of cities for that bank.
    
</dd>
</dl>

<dl>
<dd>

**city:** `String` — Gives SWIFT codes for a bank. Optionally specify the city (upper case) to narrow results to a specific city for that bank.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">swift_code_lookup</a>() -> Apifreaks::Types::SwiftCodeLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches detailed information about a SWIFT code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swift_code_lookup(
  api_key: "apiKey",
  swift_code: "swiftCode"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::SwiftCodeLookupRequestFormat` — Specify the desired response format. Options: 'json' (default) or 'xml'.
    
</dd>
</dl>

<dl>
<dd>

**swift_code:** `String` — SWIFT/BIC code to lookup (must be 8 or 11 characters).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_lookup</a>() -> Apifreaks::Types::ZipcodeLookupResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_lookup(
  api_key: "apiKey",
  code: "code"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — Comma separated list of postal / zip codes. Max. 100 values.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format. If not provided, search results will be returned from all countries.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_zipcode_lookup</a>(request) -> Apifreaks::Types::BulkZipcodeLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a bulk of ZIP/postal codes and returns result for each. Maximum `100` ZIP/postal codes per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_zipcode_lookup(
  api_key: "apiKey",
  codes: ["codes"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkZipcodeLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**codes:** `Internal::Types::Array[String]` — Comma separated list of postal / zip codes. Max. 100 values.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format. If not provided, search results will be returned from all countries.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_search_by_city</a>() -> Apifreaks::Types::ZipcodeSearchByCityResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_search_by_city(
  api_key: "apiKey",
  city: "city",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeSearchByCityRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**city:** `String` — Name of the city in which we want to find zipcodes in.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**state_name:** `String` — Name of the state or province associated with the country.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve paginated results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_search_by_region</a>() -> Apifreaks::Types::ZipcodeSearchByRegionResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_search_by_region(
  api_key: "apiKey",
  country: "country",
  region: "region"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeSearchByRegionRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**region:** `String` — Name of the region, state or province associated with the country.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page no. to retrieve paginated results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_search_by_radius</a>() -> Apifreaks::Types::ZipcodeSearchByRadiusResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_search_by_radius(
  api_key: "apiKey",
  radius: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeSearchByRadiusRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — Postal/Zip code to be used as the center point for the search.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format. Required only when using the code parameter.
    
</dd>
</dl>

<dl>
<dd>

**radius:** `Integer` — Search radius for the query. The maximum allowed values are: - 100 km - 100 mi - 109361 yd - 100000 m - 328084 ft - 3937007.75 in
    
</dd>
</dl>

<dl>
<dd>

**unit:** `Apifreaks::Types::ZipcodeSearchByRadiusRequestUnit` — Supported distance units are m, km, mi, ft, yd, in.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page no. to retrieve paginated results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_distance</a>(request) -> Apifreaks::Types::ZipcodeDistanceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get distance between postal codes. Maximum `100` postal codes per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_distance(
  api_key: "apiKey",
  compare: ["compare"],
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeDistanceRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**compare:** `Internal::Types::Array[String]` — Comma separated list of postal / zip codes with which base point is compared w.r.t. Max 100 zip codes can be provided.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — Postal/Zip code to be used as the base point.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**unit:** `Apifreaks::Types::ZipcodeDistanceRequestUnit` — Supported distance units are m, km, mi, ft, yd, in.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">zipcode_distance_match</a>(request) -> Apifreaks::Types::ZipcodeDistanceMatchResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get matching ZIP/postal code pairs within a specified distance. Maximum `100` postal codes per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.zipcode_distance_match(
  api_key: "apiKey",
  codes: ["codes"],
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ZipcodeDistanceMatchRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**codes:** `Internal::Types::Array[String]` — Comma-separated list of postal/zip codes. Maximum 100 values allowed.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**distance:** `Integer` — Maximum allowed distance between postal code pairs.
    
</dd>
</dl>

<dl>
<dd>

**unit:** `Apifreaks::Types::ZipcodeDistanceMatchRequestUnit` — Supported distance units are m, km, mi, ft, yd, in.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">current_weather</a>() -> Apifreaks::Types::CurrentWeatherResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get current weather data including temperature, humidity, precipitation, wind conditions, atmospheric pressure, and air quality for any location. Accepts city names, coordinates, or IP addresses. Also includes astronomy data and timezone-aware timestamps.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.current_weather(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::CurrentWeatherRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_current_weather</a>(request) -> Apifreaks::Types::BulkCurrentWeatherResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve current weather conditions for up to `50 locations` in a single request. A maximum of 50 locations (city names, IP addresses, or geographic coordinates) can be included in the request body.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_current_weather(
  api_key: "apiKey",
  locations: [{
    location: "lahore"
  }, {
    lat: 32.5,
    long: 74.5
  }, {
    ip: "8.8.8.8"
  }, {
    location: "seoul"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkCurrentWeatherRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**locations:** `Internal::Types::Array[Apifreaks::Types::BulkCurrentWeatherRequestLocationsItem]` — Array of locations to fetch weather data for
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">weather_forecast</a>() -> Apifreaks::Types::WeatherForecastResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Access comprehensive weather forecasts with customizable precision - choose from daily overviews, hourly breakdowns, or even minute-by-minute data. Configure your date ranges or use the default 7-day forecast for standard weather planning.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.weather_forecast(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::WeatherForecastRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date for the forecast in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between startDate and endDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date for the forecast in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between startDate and endDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**forecast_days:** `Integer` — Number of days for the forecast, from 1 to 16. Default is 7. Maximum value is 16.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::WeatherForecastRequestPrecision` — Precision of the forecast data.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">historical_weather</a>() -> Apifreaks::Types::HistoricalWeatherResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Access past weather conditions for specific dates with records going back to 1940. Retrieve comprehensive historical data with both daily and hourly precision options.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.historical_weather(
  api_key: "apiKey",
  date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::HistoricalWeatherRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Specific date for which to fetch weather data in YYYY-MM-DD format. Historical dates must be past dates only. Current or future dates are not allowed for historical data. Data available from 1940 onwards.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::HistoricalWeatherRequestPrecision` — Precision of the historical data. **Note:** 'daily' returns daily aggregates, 'hourly' returns hourly data.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">weather_time_series</a>() -> Apifreaks::Types::WeatherTimeSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pull historical weather information for date ranges up to 90 days (daily data) or 7 days (hourly data). Get consistent formatting across your specified date range with reliable historical weather patterns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.weather_time_series(
  api_key: "apiKey",
  start_date: "2023-01-15",
  end_date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::WeatherTimeSeriesRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Starting date for the data in YYYY-MM-DD format. Historical dates must be past dates only. Current or future dates are not allowed for historical data. Data available from 1940 onwards. For precision=daily, the difference between endDate and startDate must not exceed 90 days. For precision=hourly, the difference must not exceed 7 days.
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date for the data in YYYY-MM-DD format. Historical dates must be past dates only. Current or future dates are not allowed for historical data. Data available from 1940 onwards. For precision=daily, the difference between endDate and startDate must not exceed 90 days. For precision=hourly, the difference must not exceed 7 days.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::WeatherTimeSeriesRequestPrecision` — Precision of the data.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">marine_weather</a>() -> Apifreaks::Types::MarineWeatherResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Provides hourly forecasts of marine conditions including wave heights, wave directions, wave periods, swell info, sea surface temperatures, and ocean currents. Supports multiple geographical points and returns daily max wave statistics for up to 7 days. Ideal for maritime planning, navigation, and coastal activities.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.marine_weather(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::MarineWeatherRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Starting date for marine forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date for marine forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::MarineWeatherRequestPrecision` — Precision of the marine data.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">air_quality</a>() -> Apifreaks::Types::AirQualityResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Monitor and predict air quality conditions using European and US AQI standards. Track pollutant concentrations including PM10, PM2.5, carbon monoxide, nitrogen dioxide, sulfur dioxide, ozone, and dust particles. Get current readings plus hourly forecasts up to 5 days ahead, complete with UV index and aerosol measurements for comprehensive air quality assessment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.air_quality(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::AirQualityRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Starting date for AQI forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 5 days.
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date for AQI forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 5 days.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::AirQualityRequestPrecision` — Only hourly precision is supported; returns hourly AQI data for the selected date range.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">flood_forecast</a>() -> Apifreaks::Types::FloodForecastResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Provides flood forecast data for a given location, including river discharge metrics such as mean, median, maximum, minimum, and percentile values (p25, p75). Requires a startDate and endDate, with the date range limited to 16 days. Location can be specified using city name, latitude/longitude, or IP address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.flood_forecast(
  api_key: "apiKey",
  start_date: "2023-01-15",
  end_date: "2023-01-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::FloodForecastRequestFormat` — Response format returned by the API.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Starting date for flood forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date for flood forecast data in YYYY-MM-DD format. Forecast dates must be current or future dates only. Past dates are not allowed for forecast data. The difference between endDate and startDate must not exceed 16 days.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP(v4 or v6) address for location inference.
    
</dd>
</dl>

<dl>
<dd>

**precision:** `Apifreaks::Types::FloodForecastRequestPrecision` — Only daily precision is supported; returns flood forecast data for the selected date range.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — Timezone for the results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_countries</a>() -> Apifreaks::Types::GetCountriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve countries, optionally filtered by region or subregion.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_countries(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetCountriesRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**region:** `String` — Optional filter to return countries within a specific region from the region endpoint.
    
</dd>
</dl>

<dl>
<dd>

**subregion:** `String` — Optional filter to return countries within a specific subregion from the subregion endpoint.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_country_details</a>() -> Apifreaks::Types::GetCountryDetailsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_country_details(
  api_key: "apiKey",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetCountryDetailsRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_regions</a>() -> Apifreaks::Types::GetRegionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_regions(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetRegionsRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_subregions</a>() -> Apifreaks::Types::GetSubregionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_subregions(
  api_key: "apiKey",
  region: "region"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetSubregionsRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**region:** `String` — Name of the region.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_admin_levels</a>() -> Apifreaks::Types::GetAdminLevelsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve administrative units based on ISO 3166-1 alpha-2 country code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_admin_levels(
  api_key: "apiKey",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetAdminLevelsRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_admin_units</a>() -> Apifreaks::Types::GetAdminUnitsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve administrative divisions for a given country using ISO 3166-1 alpha-2 country codes. You can optionally filter by administrative levels.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_admin_units(
  api_key: "apiKey",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetAdminUnitsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**admin_levels:** `String` — Comma-separated list to filter results by one or more administrative levels.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_admin_unit_details</a>() -> Apifreaks::Types::GetAdminUnitDetailsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve detailed administrative unit information by country and optionally filtered by admin code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_admin_unit_details(
  api_key: "apiKey",
  country: "country",
  admin_unit: "admin_unit"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetAdminUnitDetailsRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**admin_unit:** `String` — Optional admin code to fetch details for a specific administrative unit.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_cities</a>() -> Apifreaks::Types::GetCitiesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of cities within a country, optionally filtered by an administrative unit code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_cities(
  api_key: "apiKey",
  country: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetCitiesRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**admin_unit:** `String` — Administrative unit code used to filter cities within a specific region.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_supported_flags</a>() -> Internal::Types::Array[Apifreaks::Types::GetSupportedFlagsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of all supported flags with their metadata
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_supported_flags(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_flags</a>() -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the flag for a specific country
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.get_flags(
  api_key: "apiKey",
  name: "name",
  shape: "flat",
  type: "country"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Country code in ISO 3166-1 alpha-2 format.
    
</dd>
</dl>

<dl>
<dd>

**shape:** `Apifreaks::Types::GetFlagsRequestShape` — Flag shape. One of: `'flat'` or `'round'`.
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::GetFlagsRequestFormat` — Flag format. Applicable only for PNG or WEBP formats. Default is png.
    
</dd>
</dl>

<dl>
<dd>

**size:** `Apifreaks::Types::GetFlagsRequestSize` — Flag size in pixels. Valid options: `16px`, `24px`, `32px`, `48px`, `64px`. Applicable only for PNG or WEBP formats.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Apifreaks::Types::GetFlagsRequestType` — Type of flag. One of: `country` or `organization`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">timezone_lookup</a>() -> Apifreaks::Types::TimezoneLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve current time, date, and timezone-related information by specifying a timezone name, location address, location coordinates, IP address, or use the client IP address if no parameter is passed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.timezone_lookup(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::TimezoneLookupRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4 or IPv6 address to extract timezone information.
    
</dd>
</dl>

<dl>
<dd>

**tz:** `String` — Timezone name (e.g., "Asia/Kolkata") to retrieve information directly.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — Location string (preferably city and country) to extract timezone.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude for geolocation lookup.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude for geolocation lookup.
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::TimezoneLookupRequestLang` — Language code for response localization (default is "en").
    
</dd>
</dl>

<dl>
<dd>

**iata_code:** `String` — 3-letter IATA airport code (e.g., JFK).
    
</dd>
</dl>

<dl>
<dd>

**icao_code:** `String` — 4-letter ICAO airport code (e.g., KJFK).
    
</dd>
</dl>

<dl>
<dd>

**lo_code:** `String` — 5-letter UN/LO city code.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">timezone_convert</a>() -> Apifreaks::Types::TimezoneConvertResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Converts a given time from one timezone to another using various input types like timezone name, coordinates, location, or codes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.timezone_convert(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::TimezoneConvertRequestFormat` — Format of the response .
    
</dd>
</dl>

<dl>
<dd>

**time:** `String` — Time to convert in `yyyy-MM-dd HH:mm` or `yyyy-MM-dd HH:mm:ss` format.
    
</dd>
</dl>

<dl>
<dd>

**tz_from:** `String` — Source timezone name (e.g., `Asia/Kolkata`).
    
</dd>
</dl>

<dl>
<dd>

**tz_to:** `String` — Target timezone name (e.g., `America/New_York`).
    
</dd>
</dl>

<dl>
<dd>

**lat_from:** `Integer` — Latitude of source location.
    
</dd>
</dl>

<dl>
<dd>

**long_from:** `Integer` — Longitude of source location.
    
</dd>
</dl>

<dl>
<dd>

**lat_to:** `Integer` — Latitude of target location.
    
</dd>
</dl>

<dl>
<dd>

**long_to:** `Integer` — Longitude of target location.
    
</dd>
</dl>

<dl>
<dd>

**location_from:** `String` — From location (city/country).
    
</dd>
</dl>

<dl>
<dd>

**location_to:** `String` — To location (city/country).
    
</dd>
</dl>

<dl>
<dd>

**iata_from:** `String` — From IATA airport code (e.g., JFK).
    
</dd>
</dl>

<dl>
<dd>

**iata_to:** `String` — To IATA airport code.
    
</dd>
</dl>

<dl>
<dd>

**icao_from:** `String` — From ICAO airport code (e.g., KJFK).
    
</dd>
</dl>

<dl>
<dd>

**icao_to:** `String` — To ICAO airport code.
    
</dd>
</dl>

<dl>
<dd>

**locode_from:** `String` — From UN/LO CODE.
    
</dd>
</dl>

<dl>
<dd>

**locode_to:** `String` — To UN/LO CODE.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">user_agent_lookup</a>() -> Apifreaks::Types::UserAgentLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Parse User Agent string to get detailed browser, device, and operating system information
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user_agent_lookup(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::UserAgentLookupRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_user_agent_lookup</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkUserAgentLookupResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Parse up to `50,000 User-Agent strings` at once in a single request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bulk_user_agent_lookup(
  api_key: "apiKey",
  ua_strings: ["uaStrings"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::BulkUserAgentLookupRequestFormat` — Format of the response
    
</dd>
</dl>

<dl>
<dd>

**ua_strings:** `Internal::Types::Array[String]` — List of user agent strings to parse
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">ocr_predict</a>(request) -> Apifreaks::Types::OcrPredictResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Perform Optical Character Recognition (OCR) on images, PDFs, or ZIP archives. Supports two models: `mini-ocr-v1` for CAPTCHA-optimized OCR and `ocr-v1` for general-purpose document text extraction. Supports zonal OCR to extract text from specific regions of an image.

**Notes:**
- The `zone` query parameter cannot be given with .pdf and .zip types as it can only be applied to single image query.
- The `page_range` query parameter cannot be given in any other type except .pdf types.
- PDFs containing images in them are allowed only for processing.
- The `mini-ocr-v1` model doesn’t support the following query parameters:
    - `page_range` (.pdf types)
    - `zone`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ocr_predict(
  api_key: "apiKey",
  model: "mini-ocr-v1",
  ocr_predict_request_model: "mini-ocr-v1"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — URL of the image or PDF (required if `file` not provided)
    
</dd>
</dl>

<dl>
<dd>

**model:** `Apifreaks::Types::OcrPredictRequestModel` — OCR model to use.
    
</dd>
</dl>

<dl>
<dd>

**page_range:** `String` — Specify page range for multi-page PDFs (e.g., '1,3,5-10' or 'allpages'). **Note:** This parameter can only be used with .pdf file types.
    
</dd>
</dl>

<dl>
<dd>

**zone:** `String` — Define OCR zones using coordinates (top:left:height:width). Multiple zones can be defined using commas. Only available for model 'ocr-v1'. **Note:** This parameter cannot be used with .pdf and .zip file types as it can only be applied to single image queries.
    
</dd>
</dl>

<dl>
<dd>

**new_line:** `Integer` — Set to 1 to split output text into individual lines (default: 0)
    
</dd>
</dl>

<dl>
<dd>

**ocr_predict_request_url:** `String` — URL of the image or PDF (required if `file` not provided)
    
</dd>
</dl>

<dl>
<dd>

**ocr_predict_request_model:** `Apifreaks::Types::OcrPredictRequestModel` — OCR model to use. `mini-ocr-v1` for CAPTCHA OCR, `ocr-v1` for general OCR
    
</dd>
</dl>

<dl>
<dd>

**ocr_predict_request_page_range:** `String` — Specify page range for multi-page PDFs (e.g., '1,3,5-10' or 'allpages'). **Note:** This parameter can only be used with .pdf file types.
    
</dd>
</dl>

<dl>
<dd>

**ocr_predict_request_zone:** `String` — Define OCR zones using coordinates (top:left:height:width). Multiple zones can be defined using commas. Only available for model 'ocr-v1'. **Note:** This parameter cannot be used with .pdf and .zip file types as it can only be applied to single image queries.
    
</dd>
</dl>

<dl>
<dd>

**ocr_predict_request_new_line:** `Integer` — Set to 1 to split output text into individual lines (default: 0)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">grammar_detect</a>(request) -> Apifreaks::Types::GrammarDetectResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Analyze text for grammar errors and return the exact words flagged as grammatically incorrect with zero-based word positions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.grammar_detect(
  api_key: "apiKey",
  text: "The global mental is health crisis is now a serious and compelex problem. It need quick and ongoing action from policymakers, healthcare workers, and the whole society."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**text:** `String` — Text to analyze for grammar errors
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">grammar_correct</a>(request) -> Apifreaks::Types::GrammarCorrectResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submit text with grammatical issues and receive a clean grammar-corrected result for proofreading and content workflows.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.grammar_correct(
  api_key: "apiKey",
  text: "The global mental is health crisis is now a serious and compelex problem. It need quick and ongoing action from policymakers, healthcare workers, and the whole society."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**text:** `String` — Text to correct
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">weak_words_detect</a>(request) -> Apifreaks::Types::WeakWordsDetectResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Analyze text and return weak, vague, or filler words with zero-based word positions to help writers produce clearer and more concise content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.weak_words_detect(
  api_key: "apiKey",
  text: "Many people cannot get the support they need to handle their conditions well."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**text:** `String` — Text to analyze for weak words
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">readability_score</a>(request) -> Apifreaks::Types::ReadabilityScoreResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Analyze text readability using industry-standard formulas including Flesch Reading Ease, Flesch-Kincaid Grade Level, Gunning Fog Index, SMOG Index, Coleman-Liau Index, and Automated Readability Index.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.readability_score(
  api_key: "apiKey",
  text: "The global mental is health crisis is now a serious and compelex problem. It needs quick and ongoing action from policymakers, healthcare workers, and the whole society."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**target:** `Apifreaks::Types::ReadabilityScoreRequestTarget` — Target audience used to tune sentence difficulty levels
    
</dd>
</dl>

<dl>
<dd>

**exclude:** `String` — Comma-separated response sections to omit. Possible values are readability_scores, sentence_readability, readability_grade
    
</dd>
</dl>

<dl>
<dd>

**text:** `String` — Text to analyze for readability
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">astronomy_lookup</a>() -> Apifreaks::Types::AstronomyLookupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve sunrise and sunset times, current position of the moon, and other related information by specifying a location address, location coordinates, IP address, or using the client IP address if no parameter is passed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.astronomy_lookup(api_key: "apiKey")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_key:** `String` — Your API key
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::AstronomyLookupRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — Location name or address
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Integer` — Latitude for location coordinates
    
</dd>
</dl>

<dl>
<dd>

**long:** `Integer` — Longitude for location coordinates
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IP address for location detection
    
</dd>
</dl>

<dl>
<dd>

**lang:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Date for astronomy data (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**elevation:** `Integer` — Timezone of the location for which astronomy data is required
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apifreaks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

