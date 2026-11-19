# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class ScreenshotCaptureResponseClip < Internal::Types::Model
      field :height, -> { Integer }, optional: true, nullable: false

      field :width, -> { Integer }, optional: true, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
