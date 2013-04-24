# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PowerOf1::Application.initialize!

#set default date format to UK
Date::DATE_FORMATS.merge!(
  :default => "%d %B %Y"
  )
