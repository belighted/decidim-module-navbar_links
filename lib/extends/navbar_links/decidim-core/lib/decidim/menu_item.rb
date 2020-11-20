# frozen_string_literal: true

module NavbarLinks
  module MenuItemExtend
    extend ActiveSupport::Concern

    included do

      def initialize(label, url, options = {})
        @label = label
        @url = url
        @position = options[:position] || Float::INFINITY
        @if = options[:if]
        @active = options[:active]
        @icon_name = options[:icon_name]
        @target = options[:target]
      end

      attr_reader :target

    end
  end

  ::Decidim::MenuItem.send(:include, MenuItemExtend)
end
