# frozen_string_literal: true

# require_relative "tests"

Gem::Specification.new do |spec|
  spec.name = "vp-beacon-harvester"
  spec.version = 1
  spec.authors = ["Mark Wilkinson"]
  spec.email = ["markw@illuminae.com"]

  spec.summary = "Harvests FDP metadata for the Beacon catalogs endpoint."
  spec.description = "Harvests FDP metadata for the Beacon catalogs endpoint."
  spec.homepage = "https://github.com/ejp-rd-vp/fdp-beacon-proxy"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.metadata["rubygems_mfa_required"] = "true"
end
