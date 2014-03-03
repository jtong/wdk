require 'thor'
require "thor/group"
require 'jt-mobile-kit-generator/jt_generator'

require "jt-mobile-kit/www_rb/www_rb"

class WDK_Cli < Thor
  register JtGenerator, :g, "g", "Generate something"
  register WwwRb, :ruby_based, "ruby_scaffold", "create a new application"

  desc :new, "new ruby based web project"
  def new project_name
    WwwRb.start [:new, project_name]
  end
end





