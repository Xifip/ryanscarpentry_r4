Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  if config.respond_to?(:action_mailer)
    config.action_mailer.raise_delivery_errors = false
  end

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'costelljohn@gmail.com',
    password:             ENV["gmail_pw"],
    authentication:       'plain',
    enable_starttls_auto: true  }
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  Refinery::Core.configure do |config|
    config.s3_backend = true
    config.s3_access_key_id = ENV["S3_KEY"]
    config.s3_secret_access_key = ENV["S3_SECRET"]
    config.s3_bucket_name = ENV["S3_BUCKET"]
    config.s3_region =  ENV["S3_REGION"]
  end
end
