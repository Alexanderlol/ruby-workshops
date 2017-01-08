require 'open-uri'
require 'json'
require 'pp'

json_object = JSON.parse(open("https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6").read)
json_object2 = JSON.parse(open("https://shopicruit.myshopify.com/admin/orders.json?page=2&access_token=c32313df0d0ef512ca64d5b336a0d7c6").read)
json_object3 = JSON.parse(open("https://shopicruit.myshopify.com/admin/orders.json?page=3&access_token=c32313df0d0ef512ca64d5b336a0d7c6").read)

total1 = 0
total2 = 0
total3 = 0

json_object["orders"].each do |order|
  total1 += order["total_price"].to_f
end

json_object2["orders"].each do |order|
  total2 += order["total_price"].to_f
end

json_object3["orders"].each do |order|
  total3 += order["total_price"].to_f
end

pp total1.round(2)
pp total2.round(2)
pp total3.round(2)
pp total1.round(2) + total2.round(2) + total3.round(2)