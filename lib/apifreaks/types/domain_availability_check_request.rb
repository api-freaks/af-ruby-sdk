# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilityCheckRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainAvailabilityCheckRequestFormat }, optional: true, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :source, -> { Apifreaks::Types::DomainAvailabilityCheckRequestSource }, optional: true, nullable: false
    end
  end
end
