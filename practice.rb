require 'open-uri'
require 'json'

ORDER_PAGES = 3
revenue = 0

# loop thru 3 pages of orders
for i in 1..ORDER_PAGES
	total = 0

	# fetch order
	json_object = JSON.parse(open("https://shopicruit.myshopify.com/admin/orders.json?page=#{i}&access_token=c32313df0d0ef512ca64d5b336a0d7c6").read)

	# iterate thru each order cost
	json_object["orders"].each do |order|
		total += order["total_price"].to_f
	end

	# round to 2 decimal points
	puts total.round(2)

	revenue += total
end

puts revenue.round(2)