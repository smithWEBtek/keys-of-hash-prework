require 'pry'

class Hash
	def keys_of(*args)
		matches = []
		self.map do |key, value|
			args.each do |arg|
				if value ==  arg
					matches << key
				end
			end
		end
		matches
	end

end
		
# map {|key, value| args.include?(value) ? key : nil }.compact

# meals = Hash.new
# meals["breakfast"] = 'eggs'
# meals["lunch"] = 'sandwich'
# meals["dinner"] = 'soup'
# data = ['turtle', 'soup', 'juice']
# meals.keys_of(data)