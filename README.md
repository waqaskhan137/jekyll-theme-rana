# jekyll-theme-rana

A reading-first Jekyll theme by [Rana Waqas](https://waqasrana.space). Posts open in a clean,
distraction-free reading column set in Charter serif, with the site chrome out of the way.
Based on [Chirpy] 7.5.0.

**Live demo:** [waqaskhan137.github.io/jekyll-theme-rana](https://waqaskhan137.github.io/jekyll-theme-rana/), built from this repo by the Pages workflow.

## What it changes over Chirpy

- **Reading mode on posts.** On post pages the sidebar, search, panels (recently updated,
  trending tags, TOC), tag chips, license/share row, related posts, and post navigation are
  hidden. The article gets a wide centered column (~60rem), larger text (~20px Charter serif),
  and a single back-arrow to home. List pages keep the full Chirpy layout.
- **Typography.** Charter (system serif, no webfont cost) for headings and post prose,
  DM Sans for UI, Fira Code for code.
- **Mermaid out of the box.** Fenced ` ```mermaid ` blocks render in any post, light/dark
  aware, no per-post front matter. (Loaded from jsdelivr at runtime.)
- **Quieter by default.** No footer theme credit, no trending-tags panel, warm
  near-paper palette: teal accent `#0f766e` / `#2dd4bf`, backgrounds `#fafaf9` / `#111111`.

Everything else (search on list pages, dark mode, PWA, archives, SEO, i18n locales) is
inherited from Chirpy 7.5.0.

## Install

### Option 1: remote theme (GitHub Pages friendly)

```yaml
# _config.yml
remote_theme: waqaskhan137/jekyll-theme-rana
plugins:
  - jekyll-remote-theme
  - jekyll-paginate
  - jekyll-seo-tag
  - jekyll-archives
  - jekyll-sitemap
  - jekyll-include-cache
```

```ruby
# Gemfile
gem "jekyll", "~> 4.3"
gem "jekyll-remote-theme"
gem "jekyll-paginate"
gem "jekyll-seo-tag"
gem "jekyll-archives"
gem "jekyll-sitemap"
gem "jekyll-include-cache"
```

### Option 2: gem from git

```ruby
# Gemfile
gem "jekyll-theme-rana", github: "waqaskhan137/jekyll-theme-rana"
```

```yaml
# _config.yml
theme: jekyll-theme-rana
```

With a gem theme on Jekyll 4.3+, the theme's plugin dependencies are required automatically.

## Configure

This theme reads the same `_config.yml` options as Chirpy 7.5 (title, tagline, social,
avatar, analytics, comments, PWA, etc.); see the [Chirpy docs] for the full list. User-side
files you provide in your own site:

- `_data/contact.yml`: which icons appear at the bottom of the sidebar (entries with `type`,
  `icon`, optional `url`).
- `_data/share.yml`: share options (unused on posts in reading mode, but kept for compatibility).
- `assets/img/favicons/`: your favicon set (the theme ships neutral defaults).
- `_tabs/`: your sidebar tabs (e.g. `about.md`). Delete a tab file to remove it.

Reading mode triggers on paths starting with `/posts/`, which is Chirpy's default
`permalink: /posts/:title/`. If you change the permalink, adjust or remove the flag script in
`_includes/metadata-hook.html`.

## Credits and license

Derived from [Chirpy] by Cotes Chung, an excellent theme; this fork mostly takes things away.
MIT licensed, with both copyrights retained: see [LICENSE](LICENSE).

[Chirpy]: https://github.com/cotes2020/jekyll-theme-chirpy
[Chirpy docs]: https://chirpy.cotes.page/
