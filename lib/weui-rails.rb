require 'weui-rails/version'

module Weui
  module Rails
    class Engine < ::Rails::Engine
      initializer 'weui-rails.assets.precompile' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
