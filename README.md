# Apifreaks Ruby SDK

[![fern shield](https://img.shields.io/badge/%F0%9F%8C%BF-Built%20with%20Fern-brightgreen)](https://buildwithfern.com?utm_source=github&utm_medium=github&utm_campaign=readme&utm_source=Apifreaks%2FRuby)

The Apifreaks Ruby library provides convenient access to the Apifreaks APIs from Ruby.

## Table of Contents

- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [File uploads](#file-uploads)
- [Errors](#errors)
- [Advanced](#advanced)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Additional Headers](#additional-headers)
  - [Additional Query Parameters](#additional-query-parameters)
  - [Additional Body Properties](#additional-body-properties)
- [Contributing](#contributing)

## Reference

A full reference for this library is available [here](./reference.md).

## Installation

Install the SDK with:

```sh
gem install apifreaks
```

## Usage

Instantiate and use the client with the following:

```ruby
require "apifreaks"

client = Apifreaks::Client.new

client.bulk_geolocation_lookup(
  api_key: "YOUR_API_KEY",
  ips: ["8.8.8.8", "1.1.1.1"]
)
```

Every method takes your API key as `api_key:`. Array parameters take a Ruby Array, e.g.
`client.domain_dns_lookup(api_key: "YOUR_API_KEY", host_name: "google.com", type: ["A", "MX"])`.

`get_credits_usage` needs an organization admin API key; any other key gets a 403 (`Apifreaks::Errors::ForbiddenError`).

## Environments

This SDK allows you to configure different environments or custom URLs for API requests. You can either use the predefined environments or specify your own custom URL.
### Environments
```ruby
require "apifreaks"

apifreaks = Apifreaks::Client.new(
    base_url: Apifreaks::Environment::DEFAULT
)
```

### Custom URL
```ruby
require "apifreaks"

client = Apifreaks::Client.new(
    base_url: "https://example.com"
)
```

## File uploads

PDF, OCR and bulk template methods take the file as `file:`. It can be a `File` (or any IO), a file path,
or a Hash `{ io:, filename:, content_type: }`. `pdf_merge` and `pdf_upload_resources` also take an Array of these.

```ruby
client.pdf_merge(api_key: "YOUR_API_KEY", file: ["first.pdf", File.open("second.pdf", "rb")])

client.ocr_predict(api_key: "YOUR_API_KEY", model: "ocr-v1", file: File.open("scan.png", "rb"))

# pdf_upload_binary sends the raw bytes; wrap bytes you already hold in StringIO
client.pdf_upload_binary(api_key: "YOUR_API_KEY", file_name: "report.pdf", file: StringIO.new(pdf_bytes))
```

## Errors

Failed API calls will raise errors that can be rescued from granularly.

```ruby
require "apifreaks"

client = Apifreaks::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.bulk_geolocation_lookup(api_key: "YOUR_API_KEY", ips: ["8.8.8.8"])
rescue Apifreaks::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue Apifreaks::Errors::ConnectionError => e
    puts "Could not reach the API (connection refused, reset, DNS or TLS failure): #{e.message}"
rescue Apifreaks::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue Apifreaks::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue Apifreaks::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue Apifreaks::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

## Advanced

### Retries

The SDK is instrumented with automatic retries. A request will be retried as long as the request is deemed
retryable and the number of retry attempts has not grown larger than the configured retry limit (default: 2).

A request is retried when the API returns one of these HTTP status codes: `408`, `429`, `500`, `502`, `503`,
`504`, `521`, `522`, `524`. Retries use exponential backoff and respect a `Retry-After` header.

Use the `max_retries` option to configure this behavior (`max_retries: 0` disables retries).

```ruby
require "apifreaks"

client = Apifreaks::Client.new(
    base_url: "https://example.com",
    max_retries: 3  # Configure max retries (default is 2)
)
```

### Timeouts

The SDK defaults to a 60 second timeout. Use the `timeout:` client option to change it for every call, or the
`timeout_in_seconds` request option to change it for one call.
A timeout raises `Apifreaks::Errors::TimeoutError`.

```ruby
require "apifreaks"

# Set the default timeout (in seconds) for every request made by the client.
client = Apifreaks::Client.new(
    base_url: "https://example.com",
    timeout: 30
)

# Override the timeout for an individual request.
response = client.bulk_geolocation_lookup(
    ...,
    request_options: { timeout_in_seconds: 30 }
)
```

### Additional Headers

If you would like to send additional headers as part of the request, use the `additional_headers` request option.

```ruby
require "apifreaks"

response = client.bulk_geolocation_lookup(
    ...,
    request_options: {
        additional_headers: {
            "X-Custom-Header" => "custom-value"
        }
    }
)
```

### Additional Query Parameters

If you would like to send additional query parameters as part of the request, use the `additional_query_parameters` request option.

```ruby
require "apifreaks"

response = client.bulk_geolocation_lookup(
    ...,
    request_options: {
        additional_query_parameters: {
            "custom_param" => "custom-value"
        }
    }
)
```

### Additional Body Properties

If you would like to send additional body properties as part of the request, use the `additional_body_parameters` request option.
Properties are merged into the serialized request body using their API (wire-format) names and override any field the SDK sets with the same name. If the endpoint has no body, one is created from these properties, except for GET and HEAD requests, which are always sent without a body (the properties are ignored).
This applies to JSON and form-urlencoded requests; it is not applied to multipart (file upload) requests.

```ruby
require "apifreaks"

response = client.bulk_geolocation_lookup(
    ...,
    request_options: {
        additional_body_parameters: {
            "custom_field" => "custom-value"
        }
    }
)
```

## Contributing

While we value open-source contributions to this SDK, this library is generated programmatically.
Additions made directly to this library would have to be moved over to our generation code,
otherwise they would be overwritten upon the next generated release. Feel free to open a PR as
a proof of concept, but know that we will not be able to merge it as-is. We suggest opening
an issue first to discuss with us!

On the other hand, contributions to the README are always very welcome!
