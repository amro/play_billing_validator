require 'multi_json'
require 'openssl'
require 'base64'

module PlayBilling
  class Transaction
    def self.valid(public_key, data, signature)
      begin
        public_key = OpenSSL::PKey::RSA.new(Base64.decode64(public_key))
        public_key.verify(OpenSSL::Digest::SHA1.new, Base64.decode64(signature), data)
      rescue Exception => e
        false
      end
    end
  end
end