
require "sinatra"

# class Pastry  
# 	def initialize(description, item)
# 		@description = description
# 		@item = item
# 	end
# end	

class Cake
	def initialize(description,item)
		@description = description
		@item = item
	end
end

class Cookies
	def initialize(description,item)
	    @description = description
		@item = item	
	end
end

class Muffins
	def initialize(description, item)
		@description = description
		@item = item
	end
end

@peanut_butter_cookie = Cookies.new("Peanut Butter",2)

get('/')  do
	# "I'm alive!"
   erb :index
end


get('/cakes')  do
	"I'm cakes!"
	erb :cakes
end


get('/cookies')  do
	"I'm a #{@peanut_butter_cookie}"
end


get('/muffins')  do
	"I'm muffins!"
end


	
