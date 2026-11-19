# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Selectors for locating and solving a single audio CAPTCHA challenge.
    class WebScrapeRequestBodyBlockURLInstructionsItemResolveAudioCaptcha < Internal::Types::Model
      field :audio_path, -> { String }, optional: true, nullable: false, api_name: "audioPath"

      field :text_field, -> { String }, optional: true, nullable: false, api_name: "textField"
    end
  end
end
