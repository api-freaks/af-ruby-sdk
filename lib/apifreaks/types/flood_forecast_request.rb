# frozen_string_literal: true

module Apifreaks
  module Types
    class FloodForecastRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::FloodForecastRequestFormat }, optional: true, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :precision, -> { Apifreaks::Types::FloodForecastRequestPrecision }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false
    end
  end
end
