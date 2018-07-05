require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Dirk < OmniAuth::Strategies::OAuth2
      option :name, :dirk

      option :client_options,
             site: 'https://dirk.cda.nl',
             authorize_url: '/oauth/authorize'

      uid { raw_info['id'] }

      info do
        {
          email_address: raw_info['email_address'],
          name: raw_info['name'],
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name'],
          navision_id: raw_info['navision_id'],
          department: raw_info['department'],
          roles: raw_info['roles']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
