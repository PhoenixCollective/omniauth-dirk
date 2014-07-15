require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Dirk < OmniAuth::Strategies::OAuth2
      option :name, :dirk

      option :client_options,
             site: 'http://dirk.dev',
             authorize_url: '/oauth/authorize'

      uid { raw_info['id'] }

      info do
        {
          email_address: raw_info['email_address']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
