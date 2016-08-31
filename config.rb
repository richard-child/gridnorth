require "builder"

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

page "/sitemap.xml", layout: false

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :directory_indexes
activate :dotenv, env: ".env"

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"

activate :s3_sync do |config|
  config.bucket                     = "www.gridnorthdesign.com"
  config.region                     = "us-east-1"
  config.aws_access_key_id          = ENV["GRIDNORTH_AWS_ACCESS_KEY"]
  config.aws_secret_access_key      = ENV["GRIDNORTH_AWS_ACCESS_SECRET"]
  config.delete                     = true
  config.after_build                = false
  config.prefer_gzip                = true
  config.reduced_redundancy_storage = false
  config.acl                        = "public-read"
  config.encryption                 = false
  config.version_bucket             = false
  config.index_document             = "index.html"
  config.error_document             = "404/index.html"
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
