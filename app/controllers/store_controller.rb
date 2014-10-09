class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart

	def index
  		@products = Product.order(:title) #this will display the products alphabetically
  	end
end
