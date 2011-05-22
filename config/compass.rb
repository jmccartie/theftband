require 'ninesixty'

# This configuration file works with both the Compass command line tool and within Rails.
# Require any additional compass plugins here.
project_type = :rails
project_path = Rails.root.to_s if defined?(Rails.root)
# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "public/stylesheets"
sass_dir = "app/assets/sass/"
environment = Compass::AppIntegration::Rails.env
output_style = :compressed
# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true