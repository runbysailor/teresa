# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Teresa::Application.initialize!

Picasa.config do |c|
	c.google_user = 'teresaalcorn'
end
