# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # BGP route object containing the route prefix, origin AS, and related metadata.
    class IPWhoisLookupResponseRoutesItem < Internal::Types::Model
      field :route, -> { String }, optional: true, nullable: true

      field :origin, -> { String }, optional: true, nullable: true

      field :description, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :country, -> { String }, optional: true, nullable: true

      field :pingable, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :ping_hdl, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :holes, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :member_of, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :inject, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :aggr_mtd, -> { String }, optional: true, nullable: true

      field :aggr_bndry, -> { String }, optional: true, nullable: true

      field :export_comps, -> { String }, optional: true, nullable: true

      field :components, -> { String }, optional: true, nullable: true

      field :organizations, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :notify, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_lower, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_by, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :date_created, -> { String }, optional: true, nullable: true

      field :date_updated, -> { String }, optional: true, nullable: true

      field :source, -> { String }, optional: true, nullable: true
    end
  end
end
