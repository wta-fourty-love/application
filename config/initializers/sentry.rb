require 'sentry-ruby'

Sentry.init do |config|
  config.enabled_environments = %w[development, staging, production]
  config.dsn = Rails.application.credentials.sentry[:dsn] unless Rails.env == 'test'
  config.breadcrumbs_logger = [:sentry_logger, :http_logger]

  # send sensitive data (user cookies, user ip, request body) if true
  config.send_default_pii = true
end
