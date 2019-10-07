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
 cart_coupons= {}
  if coupons == nil || coupons.empty?
    cart_coupons = cart
  end
  coupons.each do |coupon|
    cart.each do |itemname, data|
      if itemname == coupon[:item]
        count = data[:count] - coupon[:num]

        if count >= 0
          if cart_coupons["#{itemname} W/COUPON"] == nil
            cart_coupons["#{itemname} W/COUPON"] = {price: coupon[:cost], clearance: data[:clearance], count: 1}
          else
            couponcount = cart_coupons["#{itemname} W/COUPON"][:count] + 1
            cart_coupons["#{itemname} W/COUPON"] = {price: coupon[:cost], clearance: data[:clearance], count: couponcount}
          end
        else
          count = data[:count]
        end
        cart_coupons[itemname] = data
        cart_coupons[itemname][:count] = count
      else
        cart_coupons[itemname] = data
      end
    end
  end
  cart_coupons
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
