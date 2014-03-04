require 'thor'
require 'jt-mobile-kit-generator/jt_generator'

require "wdk/www_rb/www_rb"

class WDK_Cli < Thor

  register JtGenerator, :generate, "generate", "Generate something (short-cut alias: \"g\")"
  alias g generate

  register WwwRb, :ruby_based, "ruby_scaffold", "create a new application"

  desc :new, "new ruby based web project"
  def new project_name
    WwwRb.start [:new, project_name]
  end
end





