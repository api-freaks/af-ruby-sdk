# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSReverseRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainDNSReverseRequestFormat }, optional: true, nullable: false

      field :type, -> { Apifreaks::Types::DomainDNSReverseRequestType }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :exact, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
