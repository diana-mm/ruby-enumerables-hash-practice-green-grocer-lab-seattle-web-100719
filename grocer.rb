def consolidate_cart(cart)
  cart = {}
  cart.each do |item|
    item.each do |itemname, data|
      if cart[itemname] == nil
        cart[itemname] = data
        cart[itemname][:count] = 1 
      else
        cart[itemname][:count] += 1
      end
    end
  end
  cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
