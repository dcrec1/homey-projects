module ApplicationHelper
    def flash_messages
    class_names = { success: "success", error: "danger", alert: "warning", notice: "info" }
    flash.filter_map do |name, msg|
      if msg.present?
        type = class_names[name.to_sym]
        tag.div msg.html_safe, class: "alert text-center mb-0 alert-#{type}", style: "z-index:1"
      end
    end.join.html_safe
  end
end
