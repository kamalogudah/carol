
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "carol/version"

Gem::Specification.new do |spec|
  spec.name          = "carol"
  spec.version       = Carol::VERSION
  spec.authors       = ["kamalogudah"]
  spec.email         = ["mcpaul2058@gmail.com"]

  spec.summary       = %q{A Rack-based Web Framework.}
  spec.description   = %q{A Rack-based Web Framework,but with extra awesome..}
  spec.homepage      = "http://kamalogudah.github.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "rack", "~> 2.0", ">= 2.0.5"
  spec.add_dependency "rack-test", "~> 0.6.3"
  spec.add_dependency "erubis", "~> 2.7"
  spec.add_dependency "multi_json", "~> 1.11", ">= 1.11.2"
  spec.add_dependency "sqlite3", "~> 1.3", ">= 1.3.11"
end
