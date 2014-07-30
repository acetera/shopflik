class WelcomeController < ApplicationController

	def index
		
	end

	def shop
		@products = Product.all
	end

end
