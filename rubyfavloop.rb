people = [["Jason", "Maria", "Justin"], 
			["Red", "Blue", "Green"], 
			["Limp Bizkit", "3 Doors Down", "Papa Roach"]]

bands = people.pop

colors = people.pop

names = people.pop

x = 0

while x <= 2 do
	puts "#{names[x]}'s favorite color is #{colors[x]}, and they love #{bands[x]}."
	x += 1
end