class Fixnum 
	def method_missing(meth, *args, &blk)
		name = meth.to_s
		if name =~ /^(second|minute|hour)/
			self.send(name+'s')
		else
			super
		end
	end
	def seconds ; self ; end
	def minutes ; self * 60 ; end
	def hours 	; self * 60 * 60 ; end
	def ago 	; Time.now - self ; end
	def from_now ; Time.now + self ; end
	def day ; self * 24.hours ; end
end

class Time
	def at_beginning_of_year ; Time.now - Time.now ; end
end

#puts Time.now.at_beginning_of_year + 1.day
#puts Time.now
#puts 5.minutes.ago
#puts 5.minutes - 4.minutes
#puts 3.hours.from_now

#puts 1.minute.ago
