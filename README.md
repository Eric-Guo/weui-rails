Weui-Rails [![Gem Version][version-badge]][rubygems]
==========

An UI library for WeChat, includes widgets/modules in mobile web app, sass is copy from [kevyu/weui-sass](https://github.com/kevyu/weui-sass), so do not open any Issues/PR relative with weui sass style, instead, [open PR at weui-sass](https://github.com/kevyu/weui-sass/pulls).

Weui-Rails including some handy helper/view like `message_box`, for such feature, PR welcome.

Weui-Rails version is same as [weui-sass version](https://github.com/kevyu/weui-sass/blob/master/package.json#L3).

This gems can be used seperately, but 99% you will using with [wechat gems](https://github.com/Eric-Guo/wechat) at same time.

## Migration from 0.4.x to 1.0.x notes

Due to weui make a huge rename when go 1.0 version, so a lot of style name changed, here is some incomplete list to help you upgrade easier.

| Previus style | 1.0 style |
|---------------|-----------|
| weui_cells | weui-cells |
| weui_cell | weui-cell |
| weui_cell_hd | weui-cell__hd |
| weui_cell_bd | weui-cell__bd |
| weui_cell_ft | weui-cell__ft |
| weui_cell_primary | weui-cell_primary |
| weui_input | weui-input |
| weui_cells_title | weui-cells_title |
| weui_cells_access | weui-cell_access * |
| weui_toptips | weui-toptips |
| weui_warn | weui-toptips_warn |
| weui_cells_form | weui-cells_form |
| weui_label | weui-label |
| weui_cell_select | weui-cell_select |
| weui_select_after | weui-cell_select-after |
| weui_select_before | weui-cell_select-before |
| weui_btn | weui-btn |
| weui_btn_primary | weui-btn_primary |
| weui_btn_plain_default | weui-btn_plain-default |
| weui_textarea | weui-textarea |
| weui_msg | weui-msg |
| weui_msg_title | weui-msg__title |
| weui_text_area | weui-msg__text-area |
| weui_opr_area | weui-msg__opr-area |
| weui_btn_area | weui-btn-area |

* weui-cell_access move from weui-cells to weui-cell.

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
    <script src="http://cdnjs.gtimg.com/cdnjs/libs/zepto/1.1.4/zepto.min.js"></script>
</head>
<body ontouchstart>
  <%= yield %>
</body>
</html>
```

config/routes.rb

```ruby
  resource :wechat, only: [:show, :create] do
    collection do
      get :message_box
      get :direct_message_box
    end
  end
```

app/controllers/wechats_controller.rb

```ruby
class WechatsController < ActionController::Base
  layout 'wechat'
  def message_box
  end 

  def direct_message_box
    render 'weui/message_box', locals: { title: 'Weui', description: 'directly render in controller' }  
  end
end
```

app/views/wechats/message_box.html.erb

```erb
<%= weui_message_box 'Title', 'Description', 'weui-icon-warn' -%>
```

## More example

See [official readme](https://github.com/weui/weui#概述)

[version-badge]: https://badge.fury.io/rb/weui-rails.svg
[rubygems]: https://rubygems.org/gems/weui-rails
