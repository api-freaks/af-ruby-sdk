# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # DNS records for the email domain. Omitted entirely when validSyntax is false or the domain does not exist
    # (NXDOMAIN).
    class DisposableEmailCheckV2ResponseDNS < Internal::Types::Model
      field :mx_record, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "mxRecord"

      field :a_record, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "aRecord"
    end
  end
end
