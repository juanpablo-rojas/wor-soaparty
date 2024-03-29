lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wor/soaparty/version'

Gem::Specification.new do |spec|
  spec.name          = 'wor-soaparty'
  spec.version       = Wor::Soaparty::VERSION
  spec.authors       = ['Juan Pablo Rojas']
  spec.email         = ['juanpablo.rojas@wolox.co']
  spec.summary       = ' Simplify SOAP communication and SOAP requests '
  spec.description   = ' SOAP communication simplified '
  spec.homepage      = 'https://github.com/juanpablo-rojas/wor-soaparty'
  spec.license       = 'Wolox'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'savon', '~> 2.12'
end
