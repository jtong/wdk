require 'thor'
require 'jt-mobile-kit-generator/jt_generator'

class WDKGeneratorMain < Thor
  register JtGenerator, :g, "g", "Generate something"
end




