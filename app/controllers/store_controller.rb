class StoreController < ApplicationController
  def index
  	@products = Product.order(:title) #this will display the products alphabetically
  end
end
