Weui-Rails [![Gem Version][version-badge]][rubygems]
==========

## Installation

Add this line to your application's Gemfile:

    gem 'weui-rails'

And then execute:

    $ bundle

## Usage

app/assets/stylesheets/weui-rails.css.scss

```scss
@import "weui";
```

config/initializers/assets.rb

```ruby
Rails.application.config.assets.precompile += %w( weui-rails.css )
```

app/views/layouts/wechat.html.erb

```erb
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>WeUI</title>
    <%= stylesheet_link_tag 'weui-rails', media: 'all' %>
</head>
<body ontouchstart>
  <%= yield %>
<script src="http://cdnjs.gtimg.com/cdnjs/libs/zepto/1.1.4/zepto.min.js"></script>
</body>
</html>
```

config/routes.rb

```ruby
  resource :wechat, only: [:show, :create] do
    collection do
      get :buttons
    end
  end
```

app/controllers/wechats_controller.rb

```ruby
class WechatsController < ActionController::Base
  layout 'wechat'
end
```

app/views/wechats/buttons.html.erb

```erb
<div class="page">
    <div class="hd">
        <h1 class="page_title">Button</h1>
    </div>
    <div class="bd spacing">
        <a href="javascript:;" class="weui_btn weui_btn_primary">按钮</a>
        <a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_primary">按钮</a>
        <a href="javascript:;" class="weui_btn weui_btn_warn">确认</a>
        <a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_warn">确认</a>
        <a href="javascript:;" class="weui_btn weui_btn_default">按钮</a>
        <a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_default">按钮</a>
        <div class="button_sp_area">
            <a href="javascript:;" class="weui_btn weui_btn_plain_default">按钮</a>
            <a href="javascript:;" class="weui_btn weui_btn_plain_primary">按钮</a>

            <a href="javascript:;" class="weui_btn weui_btn_mini weui_btn_primary">按钮</a>
            <a href="javascript:;" class="weui_btn weui_btn_mini weui_btn_default">按钮</a>
        </div>
    </div>
</div>
```

[version-badge]: https://badge.fury.io/rb/weui-rails.svg