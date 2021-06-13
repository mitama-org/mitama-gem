require_relative 'lib/mitama/gem/version'

Gem::Specification.new do |spec|
  spec.name          = "mitama-gem"
  spec.version       = Mitama::Gem::VERSION
  spec.authors       = ["takuan517", "boke0"]
  spec.email         = ["ishitaku-2000517@keio.jp", "boke0@u-gen.site"]

  spec.summary       = %q{Office web application framework}
  spec.homepage      = "https://mitama.cloud"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mitama-org/mitama-gem"
  spec.metadata["changelog_uri"] = "https://github.com/mitama-org/mitama-gem/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
