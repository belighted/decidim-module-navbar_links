# frozen_string_literal: true

module NavbarLinks
  module MenuItemPresenterExtend
    extend ActiveSupport::Concern

    included do

      delegate :target, to: :@menu_item

      def render
        content_tag :li, class: link_wrapper_classes do
          if icon_name
            link_to(url) {icon(icon_name) + label}
          else
            link_to label, url, target: target
          end
        end
      end

    end
  end

  ::Decidim::MenuItemPresenter.send(:include, MenuItemPresenterExtend)
end
