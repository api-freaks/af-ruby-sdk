# frozen_string_literal: true

module Apifreaks
  module Types
    class InternalServerErrorBody < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :status, -> { Integer }, optional: true, nullable: false

      field :error, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :path, -> { String }, optional: true, nullable: false
    end
  end
end
