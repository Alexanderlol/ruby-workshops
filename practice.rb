require 'open-uri'
require 'json'
require 'pp'

json_object = JSON.parse(open("https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6").read)
total = 0
json_object["orders"].each do |order|
  total += order["total_price"].to_f
end
pp total.round(2)