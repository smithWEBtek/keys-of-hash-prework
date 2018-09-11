require 'pry'

class Hash
	def keys_of(*args)
		matches = []
		self.each do |key, value|
			args.each do |arg|
				if value ==  arg
					matches << key
				end
			end
		end
		matches
	end
end

	# hh = {
	# 	:winter => {
	# 		:christmas => ["Lights", "Wreath"],
	# 		:new_years => ["Party Hats", {friends: ['ted', 'ned', 'mary']}]
	# 	},
	# 	:summer => {
	# 		:fourth_of_july => ["Fireworks", "BBQ"]
	# 	},
	# 	:fall => {
	# 		:thanksgiving => ["Turkey"]
	# 	},
	# 	:spring => {
	# 		:memorial_day => ["BBQ"]
	# 	}
	# }
 
		
# map {|key, value| args.include?(value) ? key : nil }.compact

# meals = Hash.new
# meals["breakfast"] = 'eggs'
# meals["lunch"] = 'sandwich'
# meals["dinner"] = 'soup'
# data = ['turtle', 'soup', 'juice']
# meals.keys_of(data)