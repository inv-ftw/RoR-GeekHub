puts "Chto ty hotel?"
question = gets.chomp

while question != "POKA"

	if question != question.upcase
		puts "GOVORI GROMCHE, VNUCHEK!"
		question = gets.chomp
	else
		year = 1930 + rand(21)
		puts 'NET, NI RAZU S ' + year.to_s + ' GODA!'
		question = gets.chomp
	end
	
end

puts "POKA!"
