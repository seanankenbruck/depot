class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
end

#each line_item contains a reference to its cart's id
#existence of line_item is dependent: on the existence of the cart
#if a cart is :destroyed Rails will also destroy line_items associated with it 