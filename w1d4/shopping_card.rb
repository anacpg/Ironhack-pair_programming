	

class ShoppingCart

	attr_reader :cart, :prices

	def initialize 
		@cart = {}
		@prices = {}
	end

	def add_item_to_cart fruit
		
		#cart[fruit] = 1
		if !@cart[fruit]
			@cart[fruit] = 1
		else
			@cart[fruit] += 1
		end
	end

	def update_prices list
		@prices = list
	end

	def calculate_prices

		total = 0

		@cart.each do |fruit, quantity_fruit|

			price_fruit = @prices[fruit]
			result = price_fruit * quantity_fruit
			total += result
		end

		total
	end
	
	def show

		@cart.each do |fruit, quantity|
			puts "#{quantity} #{fruit} : #{@prices[fruit]} $"
		end


	end

end



class CLI
	##mejorarlo
	def main 
		cart = ShoppingCart.new
		cart.add_item_to_cart :banana
		cart.add_item_to_cart :banana
		cart.add_item_to_cart :apple

		prices_list = {apple: 10, oranges:  5, grapes: 15, banana: 20, watermelon: 50}

		cart.update_prices prices_list

		puts cart.cart
		puts cart.prices

		puts "show shopping list"
		puts cart.show
	end

end


