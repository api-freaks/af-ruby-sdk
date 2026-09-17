# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItem < Internal::Types::Model
      field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"

      field :policy_qualifier, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifier }, optional: true, nullable: false, api_name: "policyQualifier"
    end
  end
end
