# frozen_string_literal: true

module Apifreaks
  module Types
    class SubdomainsLookupResponseSubdomainsItem < Internal::Types::Model
      field :subdomain, -> { String }, optional: false, nullable: false

      field :first_seen, -> { String }, optional: false, nullable: false

      field :last_seen, -> { String }, optional: true, nullable: false

      field :inactive_from, -> { String }, optional: true, nullable: false
    end
  end
end
