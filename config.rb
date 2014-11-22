require 'net/http'

class MyFeature < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def minority(url, text)
      Net::HTTP.get('run.plnkr.co', '/plunks/SHPgFo5HOs5G8uNukhBM/')
    end
  end
  
end


::Middleman::Extensions.register(:my_feature, MyFeature)

activate :automatic_image_sizes
activate :directory_indexes
activate :i18n
activate :my_feature

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'
configure :build do
  activate :minify_css
  activate :minify_javascript
end

Encoding.default_internal = Encoding::UTF_8
Encoding.default_external = Encoding::UTF_8

# silence i18n warning
::I18n.config.enforce_available_locales = false
