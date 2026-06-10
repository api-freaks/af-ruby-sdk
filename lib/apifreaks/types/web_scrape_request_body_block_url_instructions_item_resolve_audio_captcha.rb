# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemResolveAudioCaptcha < Internal::Types::Model
      field :resolve_audio_captcha, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "resolveAudioCaptcha"
    end
  end
end
