# frozen_string_literal: true

module Apifreaks
  module Types
    # Policy qualifier details
    class DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifier < Internal::Types::Model
      field :oid, -> { String }, optional: true, nullable: false

      field :cps_uri, -> { String }, optional: true, nullable: false, api_name: "cpsUri"

      field :user_notice, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifierUserNotice }, optional: true, nullable: false, api_name: "userNotice"
    end
  end
end
