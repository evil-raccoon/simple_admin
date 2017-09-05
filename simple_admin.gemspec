# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simple_admin/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_admin'
  spec.version       = SimpleAdmin::VERSION
  spec.authors       = ['Dmitriy Strukov']
  spec.email         = ['dmitriy.strukov@outlook.com']

  spec.summary       = 'Simple Admin'
  spec.description   = 'Simple Admin'
  spec.homepage      = 'http://simpleadmin.com'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency 'actionview'
  spec.add_development_dependency 'activerecord'

  spec.add_dependency 'devise'
  spec.add_dependency 'kaminari'

  spec.add_dependency 'acts-as-taggable-on'
  spec.add_dependency 'friendly_id'

  spec.add_dependency 'rolify'
  spec.add_dependency 'cancancan'
  spec.add_dependency 'aasm'

  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'sass-rails'
  spec.add_dependency 'best_in_place'
end
