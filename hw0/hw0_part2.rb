def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant?(str)
	/^[^aeiou\W]/i === str
end

def binary_multiple_of_4?(str)
	return /^([01]*00)$/ === str
end

binary_multiple_of_4?("0101010101010100")
binary_multiple_of_4?("0")