# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Backlink profile of the domain.
    class DomainReputationResponseBacklinks < Internal::Types::Model
      field :found, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :matched_domain, -> { String }, optional: true, nullable: true

      field :backlink_count, -> { Integer }, optional: true, nullable: true

      field :referring_domains, -> { Integer }, optional: true, nullable: true

      field :referrer_link_density, -> { Float }, optional: true, nullable: true
    end
  end
end
