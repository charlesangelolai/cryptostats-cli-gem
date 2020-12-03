require_relative 'lib/version'
Gem::Specification.new do |spec|
    spec.name          = "cryptostats-cli"
    spec.version       = CryptoStats::VERSION
    spec.authors       = ["Charles Lai"]
    spec.email         = ["charlesangeloplai@gmail.com"]
    spec.summary       = %q{Cryptocurrency Statistics}
    spec.description   = %q{Welcome to Cryptostats! Cryptostats is a CLI ruby gem that fetches meta data of the top 100 cryptocurrencies from the CoinGecko API and displays updated statistis regarding the current prices, market cap, volume, price change, etc.}
    spec.license       = "MIT"
    spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
    
    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(cryptostats-cli|spec|features)/}) }
    end
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
    spec.add_dependency "rest-client"
    spec.add_dependency 'json'
    spec.add_dependency 'awesome_print'
    spec.add_development_dependency "pry"
end