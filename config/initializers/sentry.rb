require 'sentry-ruby'

Sentry.init do |config|
  config.dsn = Rails.application.credentials.sentry[:dsn]
  config.breadcrumbs_logger = [:sentry_logger, :http_logger]
end
