# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupResponseBulkWhoisResponseItemAdministrativeContact < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :street, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :zip_code, -> { String }, optional: true, nullable: false

      field :country_name, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :fax, -> { String }, optional: true, nullable: false

      field :mailing_address, -> { String }, optional: true, nullable: false
    end
  end
end
