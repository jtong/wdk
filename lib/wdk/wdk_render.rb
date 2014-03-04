
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

  def copy_img
    directory :img
  end

  def copy_res
    directory :res
  end

  def gen_view_to_static
    haml_pages = File.join("view","**", "*.*")
    Dir.glob haml_pages do |file|
      output_path = File.dirname(file)
      output_file_name = File.basename(file, File.extname(file))
      output = Tilt.new(file).render ViewRenderScope.new
      create_file "#{output_path}/#{output_file_name}.html", output
    end

  end
end