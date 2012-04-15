Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "product_list_total_stock",
                     :insert_after => "code[erb-loud]:contains('t(:listing_products)')",
                     :text => "<code erb-silent>
																@total_on_hand=0
																Spree::Product.all.map {|p| @total_on_hand += p.on_hand}
															</code>
															(<code erb-loud>@total_on_hand</code> total on hand)")