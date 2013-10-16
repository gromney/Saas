load "..\\open_class.rb"

class Time
	def at_begining_of_year 
		Time.local(year,1,1)  
	end
end

puts Time.now.at_begining_of_year + 1.day