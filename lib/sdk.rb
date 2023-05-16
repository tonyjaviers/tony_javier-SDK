require 'net/http'
require 'json'

module SDK
  class LordOfTheRingsSDK
    def initialize(api_key)
      @api_key = api_key
      @base_url = 'https://lordoftheringsapi.com/api'
      @movie = Movie.new(self)
      @quote = Quote.new(self)
    end

    def get(endpoint)
      url = "#{@base_url}/#{endpoint}?api_key=#{@api_key}"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
    
    def movie
        @movie
    end
  
    def quote
        @quote
    end

    def get_movie(movie_id)
      get("movie/#{movie_id}")
    end

    def get_movie_quotes(movie_id)
      get("movie/#{movie_id}/quote")
    end

    def get_quotes
      get('quote')
    end

    def get_quote(quote_id)
      get("quote/#{quote_id}")
    end
  end
end
