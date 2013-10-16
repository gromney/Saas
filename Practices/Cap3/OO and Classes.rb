puts 5.class.superclass.superclass.superclass.superclass
#puts 5.class.ancestors

def objectAncestors(obj)
	print obj.class.ancestors.to_s
end

objectAncestors(8)