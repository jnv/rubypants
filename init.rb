# Require the plugin code
require 'rubypants'

# Load locales from +locale+ directory
I18n.load_path += Dir[ File.join(File.dirname(__FILE__), 'locale', '*.yml') ]