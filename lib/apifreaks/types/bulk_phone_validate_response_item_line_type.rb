# frozen_string_literal: true

module Apifreaks
  module Types
    module BulkPhoneValidateResponseItemLineType
      extend Apifreaks::Internal::Types::Enum

      MOBILE = "MOBILE"
      FIXED_LINE = "FIXED_LINE"
      FIXED_LINE_OR_MOBILE = "FIXED_LINE_OR_MOBILE"
      VOIP = "VOIP"
      TOLL_FREE = "TOLL_FREE"
      PREMIUM_RATE = "PREMIUM_RATE"
      SHARED_COST = "SHARED_COST"
      PERSONAL_NUMBER = "PERSONAL_NUMBER"
      PAGER = "PAGER"
      UAN = "UAN"
      VOICEMAIL = "VOICEMAIL"
      UNKNOWN = "UNKNOWN"
    end
  end
end
