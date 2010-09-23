require 'rubygems'
require 'i18n'

# use English quoting style by default
I18n.default_locale ||= 'en'
# Load locales from +locale+ directory
I18n.load_path += Dir[ File.join(File.dirname(__FILE__), 'locale', '*.yml') ]

# Require the plugin code
require 'rubypants'