class Cake
	attr_accessor :description, :price
	def initialize(description, price)	
		@description = description
		@price = price
	end
end

class Cookie
	attr_accessor :description, :price
	def initialize(description, price)	
		@description = description
		@price = price
	end
end

class Muffin
	attr_accessor :description, :price
	def initialize(description, price)	
		@description = description
		@price = price
	end
end

# class Shopping_cart
# 	attr_accessor :
# 	def initialize(array)
# 		@array = array
# 	end

# 	def add_to_cart	
# 	end

# 	def subtract_from_cart
# 	end
# end






class User
	attr_accessor :username
	def admin?
		false
	end
end
