DoAddonConnector.setup do |config|
  # 
  # Service Name
  # ======================
  # This is the name of the parent service
  config.service_name = "AddonsTestApp"

  # App Slug
  # ======================
  # This is the slug used by your app
  config.slug = ENV['MP_SLUG']

  # Password
  # ======================
  # This is the password assigned to your resource
  config.password = ENV['MP_PASSWORD'] 

  # Salt
  # ======================
  # This is the salt assigned to your resource
  config.salt = ENV['MP_SALT']
  
  # Secret
  # ======================
  # This is the client secret assigned to your resource
  config.secret = ENV['MP_SECRET']

  # Token Expiration
  # ======================
  # This is how long in seconds before the token is expired
  config.token_expires_in = 60

  # Source
  # ======================
  # This represents the source of the user
  config.source = 'digitalocean'

  # SSO Redirect
  # ======================
  # This determines where the user should be taken after a successful SSO
  config.redirect_to = '/admin'
end


# config/initializers/customer_extensions.rb
Rails.application.config.to_prepare do
  DoAddonConnector::Customer.include CustomerExtensions
end

# config/initializers/sso_login_extensions.rb
Rails.application.config.to_prepare do  
  DoAddonConnector::Digitalocean::SsoController.include SsoLoginExtension
end

# config/initializers/notifications_controller_extension.rb
Rails.application.config.to_prepare do  
  DoAddonConnector::Digitalocean::NotificationsController.include NotificationsControllerExtension
end

# config/initializers/resources_controller_extension.rb
Rails.application.config.to_prepare do  
  DoAddonConnector::Digitalocean::ResourcesController.include ResourcesControllerExtension
end