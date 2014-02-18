require 'thor'
require 'jt-mobile-kit-generator/jt_generator'

class WDK_Cli < Thor
  register JtGenerator, :g, "g", "Generate something"
end




