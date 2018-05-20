
require "sinatra"

Dir[settings.root + "/classes/*.rb"].each{|file| require file}

before do
	# @user = User.new
	# @user.username = "guest"
	@muffin = Muffin.new("bluberry", 3.99)	
	@cake = Cake.new("chocolate", 13.99)
	@cookie =  Cookie.new("peanut butter", 2.50)
end


before do
	@user = User.new
	@user.username = "guest"
end


before do	
	@muffin = Muffin.new("bluberry", 3.99)	
end


before do
	@cake = Cake.new("chocolate", 13.99)	
end


before do
	@cookie =  Cookie.new("peanut butter", 2.50)
end


get('/')  do
	"I'm alive!"
   erb :index
end

get('/cakes')  do
	"I got #{@cake.description} by the pound!"
	
end
get('/cookies')  do
	"God, I want a #{@cookie.description}, so bad."
end

get('/muffins')  do
	"I am the muthafuckin #{@muffin.description} Man!"
end

get('/username')  do
	"Username: #{@user}"
end


	
