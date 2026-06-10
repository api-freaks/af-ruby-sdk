# frozen_string_literal: true

module Apifreaks
  module Internal
    module Types
      module Unknown
        include Apifreaks::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
