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

**min_lat:** `Float` — Minimum latitude for the viewbox. Must be ≤ max_lat and between -90 and 90.
    
</dd>
</dl>

<dl>
<dd>

**max_lat:** `Float` — Maximum latitude for the viewbox. Must be ≥ min_lat and between -90 and 90.
    
</dd>
</dl>

<dl>
<dd>

**min_lon:** `Float` — Minimum longitude for the viewbox. Must be ≤ max_lon and between -180 and 180.
    
</dd>
</dl>

<dl>
<dd>

**max_lon:** `Float` — Maximum longitude for the viewbox. Must be ≥ min_lon and between -180 and 180.
    
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

**lat:** `Float` — WGS84 latitude value ranging from -90 to 90.
    
</dd>
</dl>

<dl>
<dd>

**lon:** `Float` — WGS84 longitude value ranging from -180 to 180.
    
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
  host_name: "google.com",
  type: ["A", "MX"]
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

**host_name:** `String` — Hostname or URL whose DNS records are required. Give either `host-name` or `ipAddress`.
    
</dd>
</dl>

<dl>
<dd>

**ip_address:** `String` — The IP address whose PTR (reverse DNS) record is required. Give either `host-name` or `ipAddress`; with `ipAddress`, set `type` to `all` or `PTR`.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — DNS record types to look up, sent as a comma-separated list (e.g. `A,MX`). Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, PTR, or all. When ipAddress is provided, use "all" or "PTR".
    
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
  type: ["A", "MX"],
  domain_names: ["google.com", "example.com"]
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

**type:** `String` — DNS record types to look up, sent as a comma-separated list (e.g. `A,MX`). Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, or all.
    
</dd>
</dl>

<dl>
<dd>

**domain_names:** `Internal::Types::Array[String]` — List of hostnames to lookup DNS records for
    
</dd>
</dl>

<dl>
<dd>

**ip_addresses:** `Internal::Types::Array[String]` — Array of IP addresses to include in the lookup for PTR record enrichment.
    
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
  host_name: "google.com",
  type: ["A", "MX"]
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

**type:** `String` — DNS record types to look up, sent as a comma-separated list (e.g. `A,MX`). Possible values: A, AAAA, MX, NS, SOA, SPF, TXT, CNAME, or all.
    
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
  instructions: [{
    extract: {
      title: "h1",
      welcomeText: "#welcome-message"
    }
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">disposable_email_check_v2</a>(request) -> Apifreaks::Types::DisposableEmailCheckV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates email syntax and checks the domain for disposable, free, spam, and role-account signals, plus MX/A DNS records. Send the email (and optionally an ip) as a JSON request body. When an ip is included, the response also carries geolocation and security data for it.
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
client.disposable_email_check_v2(
  api_key: "apiKey",
  email: "test@sogetthis.com"
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

**format:** `Apifreaks::Types::DisposableEmailCheckV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — The email address to check.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — Optional IP address to look up for location and security data, such as the IP the signup came from.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_disposable_email_check_v2</a>(request) -> Apifreaks::Types::BulkDisposableEmailCheckV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks a bulk of email addresses (each with an optional ip) and returns a disposable email check result for each, in the same order as the request. Maximum `100` entries per request.
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
client.bulk_disposable_email_check_v2(
  api_key: "apiKey",
  email_data: [{
    email: "abc"
  }, {
    email: "john@microsoft.com",
    ip: "8.8.8.8"
  }, {
    email: "test@mailinator.com"
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

**format:** `Apifreaks::Types::BulkDisposableEmailCheckV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**email_data:** `Internal::Types::Array[Apifreaks::Types::BulkDisposableEmailCheckV2RequestEmailDataItem]` — Entries to check. Maximum 100 per request. Must not be empty, and must not contain null entries or entries without a valid email.
    
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

**count:** `Integer` — Number of suggestions to retrieve. The API returns a minimum of 5 suggestions regardless of a lower value.
    
</dd>
</dl>

<dl>
<dd>

**sug:** `Internal::Types::Boolean` — Controls the response shape. When `false`, returns a single availability object for the queried domain only. When omitted or `true`, returns an array of suggested domains instead.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_typosquatting</a>() -> Apifreaks::Types::DomainTyposquattingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Domain Typosquatting API searches for registered domains that are typo or look-alike variants of a brand keyword, or that match a wildcard pattern. Results include registration lifecycle data and drop status across 1529+ TLDs, paginated at 100 domains per page.
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
client.domain_typosquatting(api_key: "apiKey")
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

**format:** `Apifreaks::Types::DomainTyposquattingRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**keyword:** `String` — Brand or label to find typo variants for. 3-63 characters, letters, digits, or hyphens, a single label with no dots. Case-insensitive. Use either keyword or pattern, never both.
    
</dd>
</dl>

<dl>
<dd>

**pattern:** `String` — Wildcard search string that combines fuzzy matching with * wildcards. 3-63 characters total, * is the only supported wildcard and each one matches zero or more characters, maximum 3 asterisks per request. Use either keyword or pattern, never both.
    
</dd>
</dl>

<dl>
<dd>

**page_token:** `String` — Token from nextPageToken in the previous response. Required to retrieve page 2 and onward. The original keyword or pattern must be passed alongside the token on every page request. Results page at 100 domains per page.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_reputation</a>() -> Apifreaks::Types::DomainReputationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The Domain Reputation API evaluates a domain against threat intelligence sources, DGA (domain generation algorithm) scoring, trust signals, and email deliverability configuration, returning a consolidated risk assessment with a verdict, severity, and supporting evidence.
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
client.domain_reputation(
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

**format:** `Apifreaks::Types::DomainReputationRequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — The domain name to assess (e.g. example.com). Must contain at least one dot and be at most 253 characters. Automatically lowercased.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">astronomy_lookup_v2</a>() -> Apifreaks::Types::AstronomyLookupV2Response</code></summary>
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
client.astronomy_lookup_v2(api_key: "apiKey")
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

**format:** `Apifreaks::Types::AstronomyLookupV2RequestFormat` — Format of the response. Can be "json" or "xml".
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — Extract astronomy information using location (preferably city)
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Float` — Latitude to extract astronomy information using location coordinates
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude to extract astronomy information using location coordinates
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4 or IPv6 address to extract astronomy information using IP address
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::AstronomyLookupV2RequestLang` — Response language of "location" field in case of lookup through IP address only.
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Specific date (format YYYY-MM-DD) for which astronomy data is required
    
</dd>
</dl>

<dl>
<dd>

**elevation:** `Float` — Elevation above sea level at the location, in meters. The value should be between 0 meter and a maximum value of 10,000 meters. Negative value is set to 0.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — Time zone to receive all time-based data in your preferred local time.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">timezone_lookup_v2</a>() -> Apifreaks::Types::TimezoneLookupV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get current time, date, and timezone details by specifying a timezone name, location address, GPS coordinates, IP address, IATA/ICAO airport code, UN/LOCODE, or use the client IP if no parameter is provided.
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
client.timezone_lookup_v2(api_key: "apiKey")
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

**format:** `Apifreaks::Types::TimezoneLookupV2RequestFormat` — Format of the response. Possible values: json, xml.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4 or IPv6 address to extract timezone information.
    
</dd>
</dl>

<dl>
<dd>

**tz:** `String` — Timezone name in IANA format (e.g., Asia/Kolkata) to retrieve information directly.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — Location string (preferably city and country) to extract timezone.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Float` — Latitude for geolocation-based timezone lookup. Only time_zone is returned for this mode; no location object is included.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude for geolocation-based timezone lookup. Only time_zone is returned for this mode; no location object is included.
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::TimezoneLookupV2RequestLang` — Response language for location fields. Default: en.
    
</dd>
</dl>

<dl>
<dd>

**iata_code:** `String` — 3-letter IATA airport code (e.g., LHR) to extract timezone.
    
</dd>
</dl>

<dl>
<dd>

**icao_code:** `String` — 4-letter ICAO airport code (e.g., KJFK) to extract timezone.
    
</dd>
</dl>

<dl>
<dd>

**lo_code:** `String` — 5-letter UN/LOCODE city code to extract timezone.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">geolocation_lookup_v2</a>() -> Apifreaks::Types::GeolocationLookupV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed IP geolocation data for an IP address including country, city, timezone, currency, and optional threat intelligence and user-agent information.
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
client.geolocation_lookup_v2(api_key: "apiKey")
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

**format:** `Apifreaks::Types::GeolocationLookupV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**ip:** `String` — IPv4, IPv6, or hostname for geolocation lookup.
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::GeolocationLookupV2RequestLang` — Response language for location fields. Default: en.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma-separated list of fields to include in response. For example, `location` includes all location fields, `location.city` is a specific field.
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma-separated list of fields to exclude from response.
    
</dd>
</dl>

<dl>
<dd>

**include:** `String` — Comma-separated list of additional data modules to include. Possible values: security (threat intelligence), hostname (IP-Hostname lookup), liveHostname (live hostname lookup), hostnameFallbackLive (hostname with live fallback), user_agent (parse User-Agent header), abuse (abuse contact info), dma_code (DMA code), geo_accuracy (accuracy_radius, confidence, locality), * (all modules).
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_geolocation_lookup_v2</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkGeolocationLookupV2ResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed IP geolocation data for multiple IP addresses including country, city, timezone, currency, and optional threat intelligence information. Supports up to 50,000 IP addresses per request.
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
client.bulk_geolocation_lookup_v2(
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

**format:** `Apifreaks::Types::BulkGeolocationLookupV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**lang:** `Apifreaks::Types::BulkGeolocationLookupV2RequestLang` — Response language for location fields. Default: en.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — Comma-separated list of fields to include in the response. For example, `location` includes all location fields, `location.city` is a specific field.
    
</dd>
</dl>

<dl>
<dd>

**excludes:** `String` — Comma-separated list of fields to exclude from response.
    
</dd>
</dl>

<dl>
<dd>

**include:** `String` — Comma-separated list of additional data modules to include. Possible values: security (threat intelligence), hostname (IP-Hostname lookup), liveHostname (live hostname lookup), user_agent (parse User-Agent header), abuse (abuse contact info), * (all modules).
    
</dd>
</dl>

<dl>
<dd>

**ips:** `Internal::Types::Array[String]` — List of IP addresses or hostnames to lookup.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">domain_whois_lookup_v2</a>() -> Apifreaks::Types::DomainWhoisLookupV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the current WHOIS record for the specified domain, including registrar details, registrant/administrative/technical/billing/reseller contacts, name servers, status codes, and raw WHOIS text.
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
client.domain_whois_lookup_v2(
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

**format:** `Apifreaks::Types::DomainWhoisLookupV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` — Domain name to retrieve WHOIS data for (e.g. example.com).
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_domain_whois_lookup_v2</a>(request) -> Apifreaks::Types::BulkDomainWhoisLookupV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the current WHOIS record for each requested domain, in request order. Supports up to 100 domain names per request; a domain that fails to resolve yields an error item instead of failing the whole batch.
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
client.bulk_domain_whois_lookup_v2(
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

**format:** `Apifreaks::Types::BulkDomainWhoisLookupV2RequestFormat` — Format of the response.
    
</dd>
</dl>

<dl>
<dd>

**domain_names:** `Internal::Types::Array[String]` — List of domain names to retrieve WHOIS data for.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_latest_rates_v2</a>() -> Apifreaks::Types::CommodityLatestRatesV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the current live price for the requested commodity symbols. Unresolved symbols degrade to a 206 partial response instead of failing the whole request.
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
client.commodity_latest_rates_v2(
  api_key: "apiKey",
  symbols: ["XAU", "XAG"]
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

**format:** `Apifreaks::Types::CommodityLatestRatesV2RequestFormat` — Response format. Currently only `json` is supported.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols (e.g., XAU, WTIOIL-SPOT). Case-insensitive; duplicates are deduplicated server-side, with one response entry and one credit charge per unique symbol.
    
</dd>
</dl>

<dl>
<dd>

**quote:** `String` — Target currency for the exchange rate. If omitted (or set to `default`), the default quote currency of each commodity is used. Requires a premium plan; ignored on lower-tier plans.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_historical_rates_v2</a>() -> Apifreaks::Types::CommodityHistoricalRatesV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns OHLC price data for the requested commodity symbols on a specific date. Falls back to the nearest earlier rate if none exists for the exact date. Unresolved symbols degrade to a 206 partial response instead of failing the whole request.
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
client.commodity_historical_rates_v2(
  api_key: "apiKey",
  symbols: ["XAU", "XAG"],
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

**format:** `Apifreaks::Types::CommodityHistoricalRatesV2RequestFormat` — Response format. Currently only `json` is supported.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols. Case-insensitive; duplicates are deduplicated server-side, with one response entry and one credit charge per unique symbol.
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — Date in YYYY-MM-DD format. Data available from 1990 onwards.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_fluctuation_v2</a>() -> Apifreaks::Types::CommodityFluctuationV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns price fluctuation metrics (start, end, change, percent change) for the requested commodity symbols over a date range. For monthly-updated commodities the range snaps to month boundaries. Unresolved symbols degrade to a 206 partial response instead of failing the whole request.
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
client.commodity_fluctuation_v2(
  api_key: "apiKey",
  symbols: ["XAU", "XAG"],
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

**format:** `Apifreaks::Types::CommodityFluctuationV2RequestFormat` — Response format. Currently only `json` is supported.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols. Case-insensitive; duplicates are deduplicated server-side, with one response entry and one credit charge per unique symbol.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_time_series_v2</a>() -> Apifreaks::Types::CommodityTimeSeriesV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns day-by-day OHLC data for the requested commodity symbols within a date range, indexed by date. Non-trading days are excluded. Unresolved symbols degrade to a 206 partial response instead of failing the whole request.
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
client.commodity_time_series_v2(
  api_key: "apiKey",
  symbols: ["XAU", "XAG"],
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

**format:** `Apifreaks::Types::CommodityTimeSeriesV2RequestFormat` — Response format. Currently only `json` is supported.
    
</dd>
</dl>

<dl>
<dd>

**symbols:** `String` — Comma-separated list of commodity symbols. Case-insensitive; duplicates are deduplicated server-side, with one response entry and one credit charge per unique symbol.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Start date (YYYY-MM-DD)
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` — End date (YYYY-MM-DD). Maximum range is 365 days.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_symbols_v2</a>() -> Apifreaks::Types::CommoditySymbolsV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the list of supported commodity symbols with metadata. Deprecated symbols stay listed with status "inactive" and a deprecationDate.
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
client.commodity_symbols_v2(api_key: "apiKey")
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

**format:** `Apifreaks::Types::CommoditySymbolsV2RequestFormat` — Response format. Currently only `json` is supported.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">commodity_intraday_rates_v2</a>() -> Apifreaks::Types::CommodityIntradayRatesV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the prices of one commodity through a UTC day at the requested interval, keyed by UTC timestamp. Each request costs a flat 50 credits however many points it returns.
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
client.commodity_intraday_rates_v2(
  api_key: "apiKey",
  symbols: "symbols",
  interval: "1m",
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

**symbols:** `String` — Exactly one commodity symbol. Case-insensitive. Sending two or more returns a 400. Only symbols updated every second, every minute, or every 10 minutes have intraday rates; symbols updated hourly or less often return a 400. Use the Commodity Symbols endpoint for all valid values.
    
</dd>
</dl>

<dl>
<dd>

**interval:** `Apifreaks::Types::CommodityIntradayRatesV2RequestInterval` — Spacing between points. Case-insensitive. Symbols updated every 10 minutes accept only `10m`, `30m`, `1h`, `2h`, `4h`, `8h`, `12h`, `1d`.
    
</dd>
</dl>

<dl>
<dd>

**date:** `String` — The UTC day to read, in `YYYY-MM-DD` format. Cannot be in the future. For today, points stop at the current UTC minute.
    
</dd>
</dl>

<dl>
<dd>

**start_time:** `String` — First mark of the window, as a 24-hour UTC time in `HH:mm`. Must fall on a mark of the interval (for example, `14:30` works for `5m` or `30m`, but not for `1h`). For `1d` it can only be `00:00`.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Boolean` — Whether to include the `metadata` object. Pass `false` to receive only the prices.
    
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
client.pdf_merge(
  api_key: "apiKey",
  file: [File.open("first.pdf", "rb"), File.open("second.pdf", "rb")]
)

# or merge files already uploaded to the server
client.pdf_merge(api_key: "apiKey", file_id: ["file-id-1", "file-id-2"])
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

**file:** `Array[IO, String, Pathname, Hash]` — One or more files to upload: `File`/IO objects, file paths, or `{io:, filename:, content_type:}` hashes. Each element is sent as its own `file` part, in order.
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfMergeRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `Array[String]` — An array of unique file IDs referencing PDF files previously uploaded to the API Freaks server. Use this parameter to merge existing files without re-uploading them. Provide multiple IDs to merge files in the specified order.
    
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
  pages: "2",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_split(
  api_key: "apiKey",
  pages: ["1", "2-last"],  # one output file per entry
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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

**pages:** `String, Array[String]` 

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
  rotate: 90,
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  compression_level: "low",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  pages: "1-2",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_linearize(
  api_key: "apiKey",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  user_password: "secret123",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  file_password: "secret123",
  file: File.open("encrypted.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  user_password: "secret123",
  restrictions: ["print_low"],
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
  file_password: "secret123",
  user_password: "newpass123",
  file: File.open("restricted.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_convert_to_png(
  api_key: "apiKey",
  pages: "1",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_convert_to_jpg(
  api_key: "apiKey",
  pages: "1",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_convert_to_tiff(
  api_key: "apiKey",
  pages: "1",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_convert_to_bmp(
  api_key: "apiKey",
  pages: "1",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_convert_to_gif(
  api_key: "apiKey",
  pages: "1",
  file: File.open("document.pdf", "rb")
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

**file:** `IO, String, Pathname, Hash` — The file to upload: a `File`/IO, a file path, or `{io:, filename:, content_type:}`. Optional when `file_id` is given.
    
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
client.pdf_upload_resources(
  api_key: "apiKey",
  file: ["first.pdf", "second.pdf"]  # File objects or paths
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

**file:** `Array[IO, String, Pathname, Hash]` — One or more files to upload: `File`/IO objects, file paths, or `{io:, filename:, content_type:}` hashes. Each element is sent as its own `file` part, in order.
    
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
<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_upload_binary</a>(request) -> Apifreaks::Types::PdfUploadBinaryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This API uploads a PDF file to the API Freaks server in binary format (the request body is the raw file bytes) and returns its unique file ID.
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
client.pdf_upload_binary(
  api_key: "apiKey",
  file_name: "document.pdf",
  file: File.open("document.pdf", "rb")  # or a path; wrap raw bytes in StringIO
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

**file_name:** `String` — Name to store the uploaded file under, including the `.pdf` extension.
    
</dd>
</dl>

<dl>
<dd>

**file:** `IO, String, Pathname` — The PDF to upload: a `File`/IO or a file path. To send bytes you already hold, pass `StringIO.new(bytes)`.
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::PdfUploadBinaryRequestFormat` — Specifies the desired format for the API response. Choose 'json' for a JSON object or 'xml' for an XML structure.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">pdf_generate_from_template</a>(request) -> Apifreaks::Types::PdfGenerateFromTemplateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Renders the template identified by template_id with the JSON data supplied in the request body (or fetched from data_url). Returns a hosted URL for the generated PDF. Provide either a request body or a data_url; one of the two is required. The keys of the data object are the fields you bound when you designed the template in the APIFreaks PDF Template Builder, so the exact shape is up to you. Pin the version parameter to a specific template version (e.g. version=v2) so later design changes never touch what is already live; omit it to use the latest version.
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
client.pdf_generate_from_template(
  api_key: "apiKey",
  template_id: "template_id",
  body: {
    customerName: "Jane Doe",
    amount: 42
  }
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

**template_id:** `String` — The template to render, from the APIFreaks PDF Template Builder. Copy it from your dashboard when you save the template.
    
</dd>
</dl>

<dl>
<dd>

**version:** `String` — Template version to render, e.g. v2. Must start with v. Omit this parameter entirely to use the latest version; the literal value 'latest' is not accepted by the API.
    
</dd>
</dl>

<dl>
<dd>

**data_url:** `String` — A URL the API fetches your JSON data from, instead of the request body. Provide this when you are not sending a request body.
    
</dd>
</dl>

<dl>
<dd>

**body:** `Internal::Types::Hash[String, Object]` — Free-form JSON object whose keys map to the fields bound in the template. Keys are sent exactly as you spell them. `request:` is accepted as an alias, and you can also pass the fields as extra keyword arguments instead of `body:`.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_pdf_generate_from_template</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkPdfGenerateFromTemplateResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload a CSV file where each row is one record. The API generates one PDF per row and returns an array of results, each with its own pdf_url. Rows are processed independently, so a failure in one row does not block the rest of the batch. The response gives a row-by-row breakdown of which PDFs succeeded and which failed.
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
client.bulk_pdf_generate_from_template(
  api_key: "apiKey",
  template_id: "template_id",
  file: File.open("records.csv", "rb")
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

**file:** `IO, String, Pathname, Hash` — The CSV file, one record per row: a `File`/IO, a file path, or `{io:, filename:, content_type:}`.
    
</dd>
</dl>

<dl>
<dd>

**template_id:** `String` — The template to render, from the APIFreaks PDF Template Builder. Copy it from your dashboard when you save the template.
    
</dd>
</dl>

<dl>
<dd>

**version:** `String` — Template version to render, e.g. v2. Must start with v. Omit this parameter entirely to use the latest version; the literal value 'latest' is not accepted by the API.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">screenshot_capture</a>() -> Apifreaks::Types::ScreenshotCaptureResponse</code></summary>
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
  url: "https://example.com",
  width: 1280,
  height: 800
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

**output:** `Apifreaks::Types::ScreenshotCaptureRequestOutput` — Output format for screenshot results. The SDKs support only `json`, which returns metadata with the captured file's URL in `screenshot`; download the file from that URL. (The API's `output=image`, which returns the raw file, is not supported by the SDK methods.)
    
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

**duration:** `Float` — Duration in seconds for the scrolling capture. Acceptable range: 0 to 100 seconds.
    
</dd>
</dl>

<dl>
<dd>

**fail_on_error:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**longitude:** `Float` 
    
</dd>
</dl>

<dl>
<dd>

**latitude:** `Float` 
    
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

**image_quality:** `Float` 
    
</dd>
</dl>

<dl>
<dd>

**captcha_error:** `String` — CSS selector of the message shown for a wrong answer. While it is visible, the solver tries again.
    
</dd>
</dl>

<dl>
<dd>

**captcha_image:** `String` — CSS selector of the captcha picture. Required when solve_captcha is true.
    
</dd>
</dl>

<dl>
<dd>

**captcha_input:** `String` — CSS selector of the box the answer is typed into. Required when solve_captcha is true.
    
</dd>
</dl>

<dl>
<dd>

**captcha_refresh:** `String` — CSS selector of the control that loads a new captcha picture before the next try.
    
</dd>
</dl>

<dl>
<dd>

**captcha_retries:** `Integer` — Number of guesses the solver makes, from 1 to 5.
    
</dd>
</dl>

<dl>
<dd>

**captcha_submit:** `String` — CSS selector of the button to click after the answer is typed.
    
</dd>
</dl>

<dl>
<dd>

**classic_proxy:** `Internal::Types::Boolean` — Loads the page through a datacenter proxy. Adds 20 credits per request. Ignored when premium_proxy is true or a custom proxy is set.
    
</dd>
</dl>

<dl>
<dd>

**click_recursion:** `Integer` — Number of times to click the selector (when set via `selector_to_click`).
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Two-letter country code, such as US or DE, for the exit address of classic_proxy or premium_proxy. Ignored when you send your own proxy. Any two-letter code is sent, including one that is not listed. Classic proxy countries: BG, GE, DE, HN, MD, UA, GB, US. Premium proxy countries: AF, AL, DZ, AO, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BT, BO, BQ, BA, BW, BR, BN, BG, BF, BI, CV, KH, CM, CA, KY, CF, TD, CL, CN, CO, KM, CG, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, EE, SZ, ET, FO, FJ, FI, FR, GF, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IL, IT, JM, JP, JE, JO, KZ, KE, XK, KW, KG, LA, LV, LB, LS, LR, LY, LT, MO, MG, MW, MY, MV, ML, MT, MQ, MR, MU, YT, MX, MD, MN, ME, MA, MZ, MM, NA, NP, NL, NC, NZ, NI, NE, NG, MK, NO, OM, PK, PS, PA, PG, PY, PE, PH, PL, PT, PR, QA, RE, RO, RU, RW, KN, LC, VC, WS, SA, SN, RS, SC, SL, SG, SK, SI, SB, SO, ZA, KR, SS, ES, LK, SD, SR, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TO, TT, TN, TR, TM, UG, UA, AE, GB, US, UY, UZ, VE, VN, YE, ZM, ZW.
    
</dd>
</dl>

<dl>
<dd>

**extract_markdown:** `Internal::Types::Boolean` — Extracts rendered page content as a structured .md (Markdown) file. Preserves headings, lists, links. Only with output=json.
    
</dd>
</dl>

<dl>
<dd>

**format:** `Apifreaks::Types::ScreenshotCaptureRequestFormat` — Response format: json (default).
    
</dd>
</dl>

<dl>
<dd>

**get_image_urls:** `Internal::Types::Boolean` — Extracts all image URLs from the rendered DOM and returns them in structured format. Only with output=json.
    
</dd>
</dl>

<dl>
<dd>

**gpu:** `Internal::Types::Boolean` — Renders the page with a GPU, including WebGL and canvas content. Adds 20 credits per request.
    
</dd>
</dl>

<dl>
<dd>

**markdown:** `String` — Markdown to render instead of loading a URL. Works like custom_html, so you can capture a README or notes without hosting a page.
    
</dd>
</dl>

<dl>
<dd>

**ocr_model:** `Apifreaks::Types::ScreenshotCaptureRequestOcrModel` — Recognition model used by the captcha solver: mini-ocr-v1 (default) or ocr-v1.
    
</dd>
</dl>

<dl>
<dd>

**pdf_options_format:** `Apifreaks::Types::ScreenshotCaptureRequestPdfOptionsFormat` — Paper size of the PDF. Applies when file_type is PDF. Without it, width and height are used if set, otherwise the page renders as one long page: A0, A1, A2, A3, A4, A5, A6, Letter, Legal, Tabloid, or Ledger.
    
</dd>
</dl>

<dl>
<dd>

**pdf_options_landscape:** `Internal::Types::Boolean` — Renders the PDF in landscape orientation, swapping the width and height of the paper size. Applies when file_type is PDF.
    
</dd>
</dl>

<dl>
<dd>

**pdf_options_media:** `Apifreaks::Types::ScreenshotCaptureRequestPdfOptionsMedia` — CSS media type used to render the PDF: print or screen.
    
</dd>
</dl>

<dl>
<dd>

**pdf_options_page_range:** `String` — Pages to keep in the PDF, as start-end, for example 1-3 or 5-5. Pages are rendered first and then trimmed. Has no effect on a single-page PDF. Applies when file_type is PDF.
    
</dd>
</dl>

<dl>
<dd>

**pdf_options_print_background:** `Internal::Types::Boolean` — Includes background colors and images in the PDF. Applies when file_type is PDF.
    
</dd>
</dl>

<dl>
<dd>

**premium_proxy:** `Internal::Types::Boolean` — Loads the page through a residential proxy. Adds 200 credits per request. Used instead of classic_proxy.
    
</dd>
</dl>

<dl>
<dd>

**scroll_delay:** `Integer` — Delay in milliseconds between scroll steps when `lazy_load` is enabled. Use higher values for heavy pages.
    
</dd>
</dl>

<dl>
<dd>

**selector_to_click:** `String` — CSS selector for an element to click before capturing the screenshot. Useful for opening dropdowns, modals, or triggering content.
    
</dd>
</dl>

<dl>
<dd>

**solve_captcha:** `Internal::Types::Boolean` — Solves a captcha made of text drawn in a picture, then takes the screenshot. Requires captcha_image and captcha_input. Adds 20 credits per request.
    
</dd>
</dl>

<dl>
<dd>

**stealth:** `Internal::Types::Boolean` — Makes the browser look like a regular visitor for pages that block automated traffic. No extra credits.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — IANA timezone the browser uses while rendering, such as Asia/Karachi or Europe/London. Useful for clocks and localized dates.
    
</dd>
</dl>

<dl>
<dd>

**video:** `Internal::Types::Boolean` — Records visible viewport only for a specified duration. Use with `duration` parameter. Ideal for dashboards and animations.
    
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
    url: "https://example.com"
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
client.currency_latest_rates(
  api_key: "apiKey",
  base: "USD",
  symbols: ["EUR", "GBP"]
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

**amount:** `Float` — Amount to convert
    
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

**amount:** `Float` — The Amount to be converted
    
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

**amount:** `Float` — Amount to convert
    
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
  symbols: ["XAU", "XAG"],
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
  symbols: ["XAU", "XAG"]
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
  symbols: ["XAU", "XAG"],
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
  symbols: ["XAU", "XAG"],
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

**type:** `Apifreaks::Types::VatSupportedCountriesRequestType` — Which list to return: VAT (`VAT_Supported_Countries_And_States`), IBAN (`IBAN_Supported_Countries`) or SWIFT (`SWIFT_Supported_Countries`). Each value returns only its own list. If omitted (or unknown), all three lists are returned.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">bulk_vat_rate_by_country</a>(request) -> Internal::Types::Array[Apifreaks::Types::BulkVatRateByCountryResponseItem]</code></summary>
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

**region:** `String` — Name of the region, state or province associated with the country. Either region or region_code is required; region_code takes priority if both are given.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page no. to retrieve paginated results.
    
</dd>
</dl>

<dl>
<dd>

**region_code:** `String` — ISO code of the region, state, or province associated with the country. Either region or region_code is required. region_code takes priority if both are given.
    
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

**lat:** `Float` — Latitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code in ISO 3166-1 alpha-2 format. Required only when using the code parameter.
    
</dd>
</dl>

<dl>
<dd>

**radius:** `Float` — Search radius for the query. The maximum allowed values are: - 100 km - 100 mi - 109361 yd - 100000 m - 328084 ft - 3937007.75 in
    
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

**lat:** `Float` — Latitude coordinate for the base location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude coordinate for the base location.
    
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

**distance:** `Float` — Maximum allowed distance between postal code pairs.
    
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

**format:** `Apifreaks::Types::CurrentWeatherRequestFormat` — Response format returned by the API. Only JSON is supported.
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — City name, place name, or full address.
    
</dd>
</dl>

<dl>
<dd>

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::BulkCurrentWeatherRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**format:** `Apifreaks::Types::WeatherForecastRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::HistoricalWeatherRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::WeatherTimeSeriesRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::MarineWeatherRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::AirQualityRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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

**format:** `Apifreaks::Types::FloodForecastRequestFormat` — Response format returned by the API. Only JSON is supported.
    
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

**lat:** `Float` — Latitude of the location.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude of the location.
    
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
client.get_subregions(api_key: "apiKey")
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

**region:** `String` — Name of the region. If omitted, all subregions are returned.
    
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
  country: "DE",
  admin_level: ["land"]
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

**admin_level:** `String` — Filter results by one or more administrative level names (e.g. `land`, `state`, `province`), sent as a comma-separated list. Use the admin levels endpoint to list the levels a country has.
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_supported_flags</a>() -> Apifreaks::Types::GetSupportedFlagsResponse</code></summary>
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

**lat:** `Float` — Latitude for geolocation lookup.
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude for geolocation lookup.
    
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

**lat_from:** `Float` — Latitude of source location.
    
</dd>
</dl>

<dl>
<dd>

**long_from:** `Float` — Longitude of source location.
    
</dd>
</dl>

<dl>
<dd>

**lat_to:** `Float` — Latitude of target location.
    
</dd>
</dl>

<dl>
<dd>

**long_to:** `Float` — Longitude of target location.
    
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
client.user_agent_lookup(
  api_key: "apiKey",
  user_agent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
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

**user_agent:** `String` — The User-Agent string to parse. It is sent as the request's `User-Agent` header.
    
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

Parse up to `20000 User-Agent strings` at once in a single request; exceeding that returns a 413, not a 400.
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

**ua_strings:** `Internal::Types::Array[String]` — Array of User-Agent strings to parse. Maximum 20000 strings per request — exceeding that returns a 413.
    
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

**lat:** `Float` — Latitude for location coordinates
    
</dd>
</dl>

<dl>
<dd>

**long:** `Float` — Longitude for location coordinates
    
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

**elevation:** `Float` — Timezone of the location for which astronomy data is required
    
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

<details><summary><code>client.<a href="/lib/apifreaks/client.rb">get_credits_usage</a>() -> Apifreaks::Types::GetCreditsUsageResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns subscription, subscription-surcharge, and one-off credit balances for the authenticated organization's account.

**Requires an admin API key.** Other keys get a 403 (`Apifreaks::Errors::ForbiddenError`).
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
client.get_credits_usage(api_key: "apiKey")
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

**format:** `Apifreaks::Types::GetCreditsUsageRequestFormat` — Format of the response. Possible values: json, xml.
    
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

