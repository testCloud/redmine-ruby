$LOAD_PATH.unshift( File.expand_path('../lib', __FILE__ ))

Gem::Specification.new() do |s|
  s.name      = "redmine-ruby"
  s.version   = File.read('./VERSION')

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = File.read('./contributors').split("\n")
  s.summary = "Ruby Redmine Client using Her"
  s.description = "Ruby Redmine API Client that uses Her"
  s.email = "it@testcloud.de"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(spec|features)})

  s.homepage = "http://github.com/GeneralScripting/redmine-ruby"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.summary = "Ruby Redmine Client using Her"

  s.add_runtime_dependency 'her', '>= 0'
  s.add_runtime_dependency 'faraday_middleware', '>= 0'
  s.add_runtime_dependency 'multi_xml', '>= 0'

  s.add_development_dependency 'bundler', '>= 1.0'
  s.add_development_dependency 'rdoc', '~> 4.1'
  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'shoulda', '~> 3.5'

end

