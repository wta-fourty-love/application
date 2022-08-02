require 'sentry-ruby'

Sentry.init do |config|
  config.enabled_environments = %w[development, production]
  config.dsn = Rails.application.credentials.sentry[:dsn] unless Rails.env ='test'
  config.breadcrumbs_logger = [:sentry_logger, :http_logger]
end
