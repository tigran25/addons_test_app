unless Rails.env.production?
  # These are used by the connector
  ENV['MP_SLUG'] = 'slug'
  ENV['MP_PASSWORD'] = 'password'
  ENV['MP_SALT'] = 'salt'
  ENV['MP_SECRET'] = 'secret'

  # This is used for the basic auth to the backed ui
  ENV['SITE_USER'] = 'user'
  ENV['SITE_PASSWORD'] = 'password'
end