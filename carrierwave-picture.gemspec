
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "carrierwave-picture/version"

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-picture"
  spec.version       = Carrierwave::Picture::VERSION
  spec.authors       = ["Igor Pavlov"]
  spec.email         = ["igor@snega.pro"]

  spec.summary       = %q{A simple gem for convertating images to new web formats with Carriewave.}
  spec.description   = %q{Converting images to webp, jp2 and progressive jpeg via imagemagic.}
  spec.homepage      = "https://github.com/PavlovIgor/carrierwave-picture"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "carrierwave", [">= 0.8", "< 2.0"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
