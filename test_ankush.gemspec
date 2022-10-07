require_relative 'lib/test_ankush/version'

Gem::Specification.new do |spec|
  spec.name          = "test_ankush"
  spec.version       = TestAnkush::VERSION
  spec.authors       = ["Ankush Sharma"]
  spec.email         = ["ansharma@anviam.com "]

  spec.summary       = %q{This is just for testing}
  spec.description   = %q{For testing}
  spec.homepage      = "https://github.com/Ankush-Sharma1/test_ankush"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ankush-Sharma1/test_ankush"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
