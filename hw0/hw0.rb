
def sum(array)
	return 0 unless !array.empty?
	array.inject(:+)
end

def max_2_sum(array)
	return 0 unless !array.empty?
	array.sort.last(2).inject(:+)
end

def sum_to_n?(array, n)
	return 0 == n unless !array.empty?
	array.combination(2).to_a.each do |index| 
		return true unless index.inject(:+) != n
	end
	
	false
end
