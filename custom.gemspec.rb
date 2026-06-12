# frozen_string_literal: true

def add_custom_gemspec_data(spec)
  spec.email = ["support@apifreaks.com"]
  spec.homepage = "https://github.com/api-freaks/af-ruby-sdk"
  spec.license = "MIT"

  spec.metadata = {
    "homepage_uri" => "https://github.com/api-freaks/af-ruby-sdk",
    "source_code_uri" => "https://github.com/api-freaks/af-ruby-sdk",
    "bug_tracker_uri" => "https://github.com/api-freaks/af-ruby-sdk/issues",
    "documentation_uri" => "https://github.com/api-freaks/af-ruby-sdk#readme",
    "rubygems_mfa_required" => "true"
  }
end