# -*- encoding: utf-8 -*-
require File.expand_path('../lib/weui-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Eric Guo']
  gem.email         = ['eric.guocz@gmail.com']
  gem.description   = 'An UI library for WeChat, includes widgets/modules in mobile web app.'
  gem.summary       = 'An UI library for WeChat'
  gem.homepage      = 'https://github.com/Eric-Guo/weui-rails'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\) - %w[weui-rails.sublime-project Gemfile Rakefile]
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'weui-rails'
  gem.require_paths = ['lib']
  gem.version       = Weui::Rails::VERSION

  gem.add_runtime_dependency 'sass', '>= 3.4.25'
  gem.add_runtime_dependency 'autoprefixer-rails', '>= 5.2.1'
end
