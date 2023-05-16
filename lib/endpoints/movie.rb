require 'net/http'
require 'json'

module SDK
    class LordOfTheRingsSDK
      class Movie
        def initialize(api)
          @api = api
        end
  
        def get_movie(movie_id)
          @api.get("movie/#{movie_id}")
        end
  
        def get_movie_quotes(movie_id)
          @api.get("movie/#{movie_id}/quote")
        end
      end
    end
end