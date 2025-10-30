# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://globelink-654k.onrender.com/"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  # (1) トップページは必須です
  add '/', :changefreq => 'daily', :priority => 0.9

  # (2) 静的なページがある場合（例：Aboutページ）
  # add '/about', :changefreq => 'weekly', :priority => 0.7 
  
  # (3) データベース（国データなど）から動的なページを追加する場合
  # Country.find_each do |country|#
  #   add country_path(country), :lastmod => country.updated_at
  # end
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
