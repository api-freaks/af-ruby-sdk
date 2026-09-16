# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesPolicyQualifierUserNotice < Internal::Types::Model
      field :explicit_text, -> { String }, optional: true, nullable: false, api_name: "explicitText"

      field :notice_ref, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePoliciesPolicyQualifierUserNoticeNoticeRef }, optional: true, nullable: false, api_name: "noticeRef"
    end
  end
end
