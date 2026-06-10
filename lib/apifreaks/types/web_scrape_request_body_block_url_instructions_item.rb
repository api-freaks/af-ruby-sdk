# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemFill }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemClick }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemClickIfExist }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemEnter }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemNewTab }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemMoveToRelativeTab }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemWait }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemWaitFor }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSelect }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemJsExe }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemConditionalCheck }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemClickButtonByValue }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemGeneralImageCaptcha }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemBlockElement }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemExtract }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemFillImageCaptcha }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSwitchToIframe }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSwitchToParentFrame }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemResolveAudioCaptcha }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemScreenshot }

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSaveimage }
    end
  end
end
