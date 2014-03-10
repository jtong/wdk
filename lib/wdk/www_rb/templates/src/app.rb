ENV['RACK_ENV'] ||= "development"

require 'sass'
require 'sinatra'
require "sinatra/reloader"
require 'haml'
require 'wdk-view-toolkit/view_render'

configure do
  set :views, File.join(File.dirname(__FILE__), 'view')
  set :public_folder, File.dirname(__FILE__)
end

get "/" do
  haml :index, {:scope => ViewRenderScope.new, :escape_attrs => false}
end

get "/pages/:name.html" do
  haml "pages/#{params[:name]}".to_sym, {:scope => ViewRenderScope.new, :escape_attrs => false}
end

#coral ui
get "/res/coral-ui/css/:name.css" do
  sass "/res/coral-ui/css/sass/#{params[:name]}".to_sym, { views: File.join(File.dirname(__FILE__))}
end