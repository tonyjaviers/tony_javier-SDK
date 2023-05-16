#Lord of the Rings SDK

The Lord of the Rings SDK is a Ruby gem that provides a convenient interface for interacting with the Lord of the Rings API. It allows developers to retrieve movie details and quotes from the Lord of the Rings universe.

#Installation

Add the following line to your Gemfile:

```ruby
gem 'lord_of_the_rings_sdk', '~> 0.1.0'

# And then execute:
$ bundle install

# Or install it manually:
$ gem install lord_of_the_rings_sdk -v 0.1.0

#Usage
To use the Lord of the Rings SDK, you need to obtain an API key from the Lord of the Rings API website (https://lordoftheringsapi.com/). 
Once you have the API key, you can create an instance of the LordOfTheRingsSDK class and start accessing movie and quote data

#Here's a example that demonstrates how to use the SDK

require 'lord_of_the_rings_sdk'

# Instantiate the SDK with your API key
sdk = SDK::LordOfTheRingsSDK.new('your_api_key')

# Get movie details
movie = sdk.movie.get_movie(1)
puts movie['title'] # Output: The Fellowship of the Ring

# Get movie quotes
quotes = sdk.movie.get_movie_quotes(1)
quotes.each do |quote|
  puts quote['dialogue']
end

# Get all quotes
all_quotes = sdk.quote.get_quotes
all_quotes.each do |quote|
  puts quote['dialogue']
end

# Get a single quote
single_quote = sdk.quote.get_quote(1)
puts single_quote['dialogue']

