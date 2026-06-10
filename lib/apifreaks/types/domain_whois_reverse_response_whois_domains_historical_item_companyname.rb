# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisReverseResponseWhoisDomainsHistoricalItemCompanyname < Internal::Types::Model
      field :num, -> { Integer }, optional: false, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :companyname, -> { String }, optional: true, nullable: false
    end
  end
end
