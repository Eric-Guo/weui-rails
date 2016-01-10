require 'autoprefixer-rails'
require 'weui-rails/version'
require 'weui-rails/helpers/weui_message_box'

module Weui
  module Rails
    class Engine < ::Rails::Engine
    end

    # Make Weui helpers available in Rails applications.
    class Railtie < ::Rails::Railtie
      initializer 'weui.add_helpers' do
        ActionView::Base.send :include, Weui::Helpers
      end
    end
  end
end
