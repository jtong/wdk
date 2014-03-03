require 'thor'
require "thor/group"
require 'jt-mobile-kit-generator/jt_generator'

require "jt-mobile-kit/www_rb/www_rb"

class WDK_Cli < Thor
  register JtGenerator, :g, "g", "Generate something"
  register WwwRb, :new, "new", "create a new application"
end





