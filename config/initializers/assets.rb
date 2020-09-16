# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w[reset.min.css]
Rails.application.config.assets.precompile += %w[top.css]
Rails.application.config.assets.precompile += %w[top-keyvisual.css]
Rails.application.config.assets.precompile += %w[top-welcome_event.css]
Rails.application.config.assets.precompile += %w[top-recital.css]
Rails.application.config.assets.precompile += %w[contacts.css]
Rails.application.config.assets.precompile += %w[welcome_event.css]
Rails.application.config.assets.precompile += %w[about_kongoh.css]
Rails.application.config.assets.precompile += %w[recital_record.css]
Rails.application.config.assets.precompile += %w[manga.css]
Rails.application.config.assets.precompile += %w[link.css]
Rails.application.config.assets.precompile += %w[management.css]
