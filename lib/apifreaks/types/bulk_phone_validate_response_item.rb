# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkPhoneValidateResponseItem < Internal::Types::Model
      field :raw_input, -> { Apifreaks::Types::BulkPhoneValidateResponseItemRawInput }, optional: true, nullable: false

      field :possible, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :valid, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :country_prefix, -> { Integer }, optional: true, nullable: false

      field :national_number, -> { Integer }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :carrier, -> { String }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :time_zones, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :line_type, -> { Apifreaks::Types::BulkPhoneValidateResponseItemLineType }, optional: true, nullable: false

      field :formats, -> { Apifreaks::Types::BulkPhoneValidateResponseItemFormats }, optional: true, nullable: false

      field :area_code_length, -> { Integer }, optional: true, nullable: false

      field :ndc_length, -> { Integer }, optional: true, nullable: false

      field :can_be_internationally_dialled, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
