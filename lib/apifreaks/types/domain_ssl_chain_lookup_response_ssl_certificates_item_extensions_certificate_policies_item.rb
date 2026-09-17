# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItem < Internal::Types::Model
      field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"

      field :policy_qualifier, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifier }, optional: true, nullable: false, api_name: "policyQualifier"
    end
  end
end
