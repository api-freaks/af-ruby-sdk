# frozen_string_literal: true

module Apifreaks
  module Types
    class HistoricalWeatherRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::HistoricalWeatherRequestFormat }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :precision, -> { Apifreaks::Types::HistoricalWeatherRequestPrecision }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false
    end
  end
end
