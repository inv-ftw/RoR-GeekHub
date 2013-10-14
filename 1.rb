now = Time.now
seconds = 1000000000
date_of_birth = Time.at(now.to_i - seconds)
years = now.year - date_of_birth.year
days = 0
for i in 1..years do
	year = date_of_birth.year + 1
	#год является високосным в двух случаях: либо он кратен 4, но при этом не кратен 100, либо кратен 400.
	if (year % 4 == 0 && year % 100 > 0) || (year % 400 == 0)
		days += 366
	else
		days += 365
	end
end
months = years * 12

puts "The age of the person who lived " + seconds.to_s + " seconds is:"
puts years.to_s + " years,"
puts months.to_s + " months,"
puts days.to_s + " days."
