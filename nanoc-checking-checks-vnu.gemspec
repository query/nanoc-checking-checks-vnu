Gem::Specification.new do |spec|
  spec.name          = "nanoc-checking-checks-vnu"
  spec.version       = "1.0.0"
  spec.authors       = ["Roger Que"]
  spec.email         = ["git@alerante.net"]

  spec.summary       = "A nanoc check for validating HTML, CSS, and SVG " \
                       "files with the v.Nu validator."
  spec.homepage      = "https://github.com/query/nanoc-checking-checks-vnu"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.add_dependency "nanoc-checking", "~> 1.0.0"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
