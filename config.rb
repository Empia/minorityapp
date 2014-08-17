activate :automatic_image_sizes
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'
configure :build do
  activate :minify_css
  activate :minify_javascript
end

# silence i18n warning
::I18n.config.enforce_available_locales = false
