Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "product_list_total_stock",
                     :insert_after => "code[erb-loud]:contains('t(:listing_products)')",
                     :text => " (<code erb-loud>Spree::Product.sum(:count_on_hand)</code> total on hand)")