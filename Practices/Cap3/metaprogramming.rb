load "..\\open_class.rb"

class Time
	def at_begining_of_year 
		Time.local(year,1,1)  
	end
end

puts Time.now.at_begining_of_year + 1.day

class Class
  def attr_accessor_with_history(name)
      name   = name.to_s       
      attr_reader name         
      attr_reader name + "_history" 
     
    class_eval %Q{
          def #{name}= (new_value)
            @#{name} = new_value
   
            @#{name + "_history"} ||= [ nil ]
            @#{name + "_history"} << new_value
          end
        }
  end
end
 
class Foo
  attr_accessor_with_history :bar
end
 
f = Foo.new
f.bar = 1
f.bar = 2
p f.bar_history
	