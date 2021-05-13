# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module NavbarLinks
    # This is the engine that runs on the public interface of navbar_links.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::NavbarLinks

      initializer "decidim_navbar_links extends" do
        Dir.glob("#{Decidim::NavbarLinks::Engine.root}/lib/extends/navbar_links/**/*.rb").each do |override|
          require_dependency override
        end
      end

      initializer "decidim.menu" do
        Decidim.menu :menu do |menu|
          NavbarLink.organization(current_organization).ordered.each do |navbar_link|
            menu.item translated_attribute(navbar_link.title),
                      navbar_link.link,
                      position: 5,
                      active: :exact,
                      target: navbar_link.target
          end
        end
      end
    end
  end
end
