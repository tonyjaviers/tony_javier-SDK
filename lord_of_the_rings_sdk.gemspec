
Gem::Specification.new do |spec|
    spec.name        = 'lord_of_the_rings_sdk'
    spec.version     = '0.1.0'
    spec.authors     = ['Tony Javier Sanchez']
    spec.email       = 'tonyjaviers@gmail.com'
    spec.summary     = 'Lord of the Rings SDK for accessing the API.'
    spec.description = 'An SDK for the Lord of the Rings API to provide easy access to movie and quote data.'
    spec.homepage    = 'https://github.com/tonyjaviers/lord_of_the_rings_sdk'
    spec.license     = 'MIT'
  
    spec.files       = Dir['lib/**/*.rb']
    spec.require_paths = ['lib']
  
    spec.add_runtime_dependency 'net-http', '~> 2.0'
    spec.add_runtime_dependency 'json', '~> 2.5'
end
  