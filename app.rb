require "rubygems"
require "sinatra"
require "shotgun"

get "/" do
  "Hello World"
end

get "/secret" do
  "This is a secret!"
end

 get "/random-cat" do
   @name = ["Hendrik", 'Sara', "Michael"].sample
   erb(:index)
 end

 post "/named-cat" do
   p params
   @name = params[:name]
   erb(:index)
 end

 get "/cat-naming" do
   erb(:index)
 end
