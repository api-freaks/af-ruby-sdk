# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module CommodityIntradayRatesV2ResponseInterval
      extend Apifreaks::Internal::Types::Enum

      ONE_M = "1m"
      FIVE_M = "5m"
      TEN_M = "10m"
      FIFTEEN_M = "15m"
      THIRTY_M = "30m"
      FORTY_FIVE_M = "45m"
      ONE_H = "1h"
      TWO_H = "2h"
      FOUR_H = "4h"
      EIGHT_H = "8h"
      TWELVE_H = "12h"
      ONE_D = "1d"
    end
  end
end
