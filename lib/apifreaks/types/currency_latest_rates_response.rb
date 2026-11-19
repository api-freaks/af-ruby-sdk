# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CurrencyLatestRatesResponse < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :base, -> { String }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
