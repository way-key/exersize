def fizz_buzz(number)
	if number % 15 == 0
		"Fizz_Buzz"
	elsif number % 5 == 0
		"Fizz"
	elsif number % 3 == 0
		"Buzz"
	else
		number
	end
end

puts "１以上の数値を入力してください"

input = gets.to_i

puts "結果は、、、"

puts fizz_buzz(input)