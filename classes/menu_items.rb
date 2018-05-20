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


class User
	attr_accessor :username
	def admin?
		false
	end
end
