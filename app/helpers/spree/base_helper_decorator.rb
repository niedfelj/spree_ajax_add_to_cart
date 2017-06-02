module Spree
  module BaseHelper  
   def link_to_cart(text = nil)
    text = "<i class='fa fa-shopping-bag' aria-hidden='true'><span>#{simple_current_order.item_count}</span></i>"
    css_class = nil
  
    if simple_current_order.nil? or simple_current_order.item_count.zero?
      css_class = 'cart-link empty'
    else
      css_class = 'cart-link full'
     end
  
    link_to text.html_safe, spree.cart_path, :class => "#{css_class}"
  end

  end
end