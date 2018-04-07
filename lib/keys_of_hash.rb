require 'pry'

class Hash
	def keys_of(*args)
		map {|key, value| args.include?(value) ? key : nil }.compact
	end
end

# meals = Hash.new
# meals["breakfast"] = 'eggs'
# meals["lunch"] = 'sandwich'
# meals["dinner"] = 'soup'

# data = ['turtle', 'soup', 'juice']
# meals.keys_of(data)