class WDK_Render < Thor::Group
  include Thor::Actions
  source_root "./"

  def initialize(args=[], options={}, config={})
    super
    self.destination_root= "../dest"
  end

  def copy_js
    directory :js
  end
end