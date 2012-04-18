include ActionView::Helpers::NumberHelper

Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "product_list_total_stock",
                     :insert_after => "code[erb-loud]:contains('t(:listing_products)')") do		
	total_on_hand = Spree::Variant.sum(:count_on_hand)
	total_cost_price = Spree::Variant.sum(:cost_price) * total_on_hand
	" (#{total_on_hand} total stock | #{number_to_currency total_cost_price} total cost)"
end