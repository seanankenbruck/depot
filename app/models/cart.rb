class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
#each line_item contains a reference to its cart's id
#existence of line_item is dependent: on the existence of the cart
#if a cart is :destroyed Rails will also destroy line_items associated with it 

	def add_product(product_id)
		current_item = line_items.find_by(product_id: product_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id)
		end
		current_item
	end

	def total_price
		line_items.to_a.sum { |item| item.total_price } #this sums the total price of all line_items 
	end
end

