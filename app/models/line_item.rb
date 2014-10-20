class LineItem < ActiveRecord::Base 
  belongs_to :order #line items can now be used by orders
  belongs_to :product #rows in the LineItem model are children of rows in the products table
  belongs_to :cart	  #rows in the LineItem model are children of rows in the carts table

  def total_price
  	product.price * quantity #this calculates the total price of each line_item
  end
end

#for each foreign key (product and cart) this model will have a belongs_to method for each