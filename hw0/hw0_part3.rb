class BookInStock
	def initialize(isbn,price)
		if isbn.empty? || (price < 1)
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end
	
	def isbn
		@isbn
	end
	def isbn=(new_isbn)
		@isbn = new_isbn 
	end
	def price
		@price
	end
	def price=(new_price)
		#raise ArgumentError unless new_price < 1
		@price = new_price 
	end
	
	def price_as_string
		"$%.2f" % [@price]
	end
end