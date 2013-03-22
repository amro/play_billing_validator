require 'multi_json'
require 'openssl'
require 'base64'

module GooglePlay
  class Transaction
    def self.valid(public_key, data, signature)
      begin
        public_key = OpenSSL::PKey::RSA.new(Base64.decode64(Rails.configuration.g_play_inapp_billing_public_key))
        public_key.verify(OpenSSL::Digest::SHA1.new, Base64.decode64(signature), data)
      rescue
        false
      end
    end
  end
end