lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'system_events_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'system_events_client'
  spec.version       = SystemEventsClient::VERSION
  spec.authors       = ['Jeff Wallace']
  spec.email         = ['jeff@kicksite.net']

  spec.summary       = 'REST endpoint definitions to system_events backend'
  spec.description   = 'Utilize for gaining access to system_events backend/database'
  spec.homepage      = 'https://github.com/KicksiteDev/system_events_client'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activeresource'
  spec.add_runtime_dependency 'activeresource-response'
  spec.add_runtime_dependency 'kaminari'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'httparty'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
