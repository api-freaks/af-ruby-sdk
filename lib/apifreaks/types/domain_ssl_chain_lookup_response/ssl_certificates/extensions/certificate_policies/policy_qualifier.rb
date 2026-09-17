# frozen_string_literal: true

module Apifreaks
  module Types
    # Policy qualifier details
    class DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifier < Internal::Types::Model
      field :oid, -> { String }, optional: true, nullable: false

      field :cps_uri, -> { String }, optional: true, nullable: false, api_name: "cpsUri"

      field :user_notice, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifierUserNotice }, optional: true, nullable: false, api_name: "userNotice"
    end
  end
end
