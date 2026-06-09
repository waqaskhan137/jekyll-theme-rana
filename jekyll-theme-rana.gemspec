# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = "jekyll-theme-rana"
  spec.version     = "0.1.0"
  spec.authors     = ["Rana Waqas"]
  spec.email       = ["waqaskhan137@gmail.com"]

  spec.summary     = "A reading-first Jekyll theme: Charter serif posts, a distraction-free reading mode, and Mermaid diagrams out of the box. Based on Chirpy."
  spec.homepage    = "https://github.com/waqaskhan137/jekyll-theme-rana"
  spec.license     = "MIT"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    "plugin_type" => "theme"
  }

  spec.files = Dir["_data/**/*", "_includes/**/*", "_layouts/**/*", "_sass/**/*",
                   "assets/**/*", "LICENSE", "README.md"]

  spec.required_ruby_version = ">= 3.1"

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"
end
