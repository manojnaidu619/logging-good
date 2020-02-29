lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logging_good/version"

Gem::Specification.new do |spec|
  spec.name          = "logging_good"
  spec.version       = LoggingGood::VERSION
  spec.authors       = ["Manoj Naidu"]
  spec.email         = ["manojnaidu619@gmail.com"]

  spec.summary       = %q{Making Rails Logging much more lucid 👊}
  spec.homepage      = "https://github.com/manojnaidu619/logging-good"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "unicode-display_width", '~> 1.6'
  spec.add_development_dependency "terminal-table", '~> 1.8', '>= 1.8.0'
  spec.add_development_dependency 'figaro', '~> 1.1', '>= 1.1.1'
  spec.add_development_dependency 'codecov'

  spec.add_runtime_dependency "terminal-table", '~> 1.8'
  spec.add_runtime_dependency "unicode-display_width", '~> 1.6'

end
