require 'net/http'
require 'json'

module SDK
  class LordOfTheRingsSDK
    class Quote
      def initialize(api)
        @api = api
      end

      def get_quote(quote_id)
        @api.get("quote/#{quote_id}")
      end

      def get_quotes
        @api.get('quote')
      end

      def search_quotes(query)
        encoded_query = URI.encode(query)
        @api.get("quote?search=#{encoded_query}")
      end
    end
  end
end
