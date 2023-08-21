# frozen_string_literal: true

require_relative "lib/clamped/version"

Gem::Specification.new do |spec|
  spec.name = "clamped"
  spec.version = Clamped::VERSION
  spec.authors = ["Serge Hänni"]
  spec.email = ["serge@metikular.ch"]
  spec.license = "MIT"

  spec.summary = "Adds convenience methods to clamp values to a whitelist."
  spec.homepage = "https://github.com/metikular/clamped"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/metikular/clamped"
  spec.metadata["changelog_uri"] = "https://github.com/metikular/raw/main/clamped"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
end
