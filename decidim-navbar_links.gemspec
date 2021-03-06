# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/navbar_links/version"

Gem::Specification.new do |s|
  s.version = Decidim::NavbarLinks.version
  s.authors = ["Belighted"]
  s.email = ["info@belighted.com"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/belighted/decidim-module-navbar_links"
  s.required_ruby_version = ">= 2.5"

  s.name = "decidim-navbar_links"
  s.summary = "A decidim navbar_links module"
  s.description = "Add a custom link in main menu bar."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", Decidim::NavbarLinks.version
end
