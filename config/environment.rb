# Load the rails application
require File.expand_path('../application', __FILE__)

require 'tlsmail'

# Initialize the rails application
Mailit::Application.initialize!
