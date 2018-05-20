
require "sinatra"

Dir[settings.root + "/classes/*.rb"].each{|file| require file}


before do
	@user = User.new
	@user.username = "guest"
end


before do	
	@blue_berry_muffin = Muffin.new("Bluberry Muffin", 2.50)	
end

before do	
	@chocolate_chip_muffin = Muffin.new("chocolate Chip Cookie", 2.50)	
end

before do	
	@apple_cinnamon_muffin = Muffin.new("Apple Cinnamon Muffin", 2.50)	
end


before do
	@chocolate_cake = Cake.new("Chocolate Cake", 11.99)	
end

before do
	@vanilla_cake = Cake.new("Vanilla Cake", 11.99)	
end

before do
	@carrot_cake = Cake.new("Carrot Cake", 13.99)	
end


before do
	@oatmeal_raisin_cookie =  Cookie.new("Peanut Butter Cookie", 2.50)
end

before do
	@chocolate_mint_cookie =  Cookie.new("Chocolate Mint Cookie", 2.50)
end

before do
	@sandwich_cookie =  Cookie.new("Sandwich Cookie", 2.50)
end




get('/')  do
	"I'm alive!"
   erb :index
end

get('/cakes')  do
	"I got #{@carrot_cake.description} by the pound!"
	erb :cakes
	
end
get('/cookies')  do
	"God, I want a #{@sandwich_cookie.description}, so bad."
	erb :cookies
end

get('/muffins')  do
	"I am the muthafuckin #{@apple_cinnamon_muffin.description} Man!"
	erb :muffins
end

get('/username')  do
	"Username: #{@user}"
end


	
