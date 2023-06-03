# frozen_string_literal: true

require_relative "lib/wasify/version"

Gem::Specification.new do |spec|
  spec.name = "wasify"
  spec.version = Wasify::VERSION
  spec.authors = ["AlawysDelta"]
  spec.email = ["gio96b@gmail.com"]

  spec.summary = "Packs and run Ruby code on wasmtime"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end