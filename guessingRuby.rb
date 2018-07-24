puts "Input a number"
guess = gets.chomp.to_i
num = rand(1..10)
if (guess == num) 
	puts "You win"
else puts "Incorrect guess again"

end