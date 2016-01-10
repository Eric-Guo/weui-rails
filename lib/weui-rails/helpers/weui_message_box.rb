module Weui
  module Helpers
    def weui_message_box(title, description, icon_style, button_text = '确定')
      render partial: 'weui/message_box',
             locals: { title: title, description: description,
                       icon_style: icon_style, button_text: button_text }
    end
  end
end
