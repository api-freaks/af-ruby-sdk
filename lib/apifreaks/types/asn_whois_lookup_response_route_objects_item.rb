# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseRouteObjectsItem < Internal::Types::Model
      field :route, -> { String }, optional: false, nullable: false

      field :origin, -> { String }, optional: false, nullable: false

      field :origin_name, -> { String }, optional: false, nullable: false, api_name: "originName"

      field :isp, -> { String }, optional: false, nullable: false

      field :number_of_ips, -> { Integer }, optional: false, nullable: false, api_name: "numberOfIps"
    end
  end
end
