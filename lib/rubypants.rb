require 'rubygems'
require 'i18n'

# Load locales from +locale+ directory
I18n.load_path += Dir[ File.join(File.dirname(__FILE__), '..', 'locale', '*.yml') ]

# Require the plugin code
require 'rubypants/rubypants'
require 'rubypants/version'