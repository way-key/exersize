total_price = 200

if total_price > 100
	puts "みかんを購入。所持金に余りあり"
end
if total_price == 100
	puts "みかんを購入。所持金に余り無し"
end
if total_price <=100
	puts "みかんを購入することができません"
end

if total_price > 100
	puts "みかんを購入。所持金に余りあり"
elsif total_price == 100
	puts "みかんを購入。所持金に余り無し"
else
	puts "みかんを購入することができません"
end