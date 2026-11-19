# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifierUserNotice < Internal::Types::Model
      field :explicit_text, -> { String }, optional: true, nullable: false, api_name: "explicitText"

      field :notice_ref, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesItemPolicyQualifierUserNoticeNoticeRef }, optional: true, nullable: false, api_name: "noticeRef"
    end
  end
end
