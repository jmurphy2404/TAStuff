puts "Give a number between 1 and 100"

num = gets.chomp.to_i

if ((num % 5 == 0) && (num % 3 == 0))
	puts "fizzbuzz"
elsif (num % 3 == 0)
	puts "fizz"
elsif (num % 5 == 0)
	puts "buzz"
else
	puts "#{num} is not fizzbuzzable"
end

# for num in 1..100
# 	if ((num % 5 == 0) && (num % 3 == 0))
# 		puts "#{num} is a fizzbuzz"
# 	elsif (num % 3 == 0)
# 		puts "#{num} is a fizz"
# 	elsif (num % 5 == 0)
# 		puts "#{num} is a buzz"
# 	else
# 		puts "#{num} is not fizzbuzzable"
# 	end
# end