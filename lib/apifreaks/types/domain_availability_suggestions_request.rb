# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainAvailabilitySuggestionsRequestFormat }, optional: true, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :source, -> { Apifreaks::Types::DomainAvailabilitySuggestionsRequestSource }, optional: true, nullable: false

      field :count, -> { Integer }, optional: true, nullable: false
    end
  end
end
