class Cake
	attr_accessor :description, :price
	def initialize(description, price)	
		@description = description
		@price = price
		@cake_bundle = []
	end

	def add_to_cart
		@cake_bundle.push	
	end

	def subtract_from_cart
		@cake_bundle.pop
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


# please delete commented out code before submitting
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
