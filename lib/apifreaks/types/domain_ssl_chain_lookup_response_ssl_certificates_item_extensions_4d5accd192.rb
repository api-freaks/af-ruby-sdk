# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePoliciesPolicyQualifierUserNoticeNoticeRef < Internal::Types::Model
      field :organization, -> { String }, optional: true, nullable: false

      field :notice_numbers, -> { String }, optional: true, nullable: false, api_name: "noticeNumbers"
    end
  end
end
