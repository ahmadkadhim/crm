class Database



	attr_accessor :list, :counter

	def initialize
		@list = []
		@counter = 100
	end

	def add(first_name, last_name, email, notes)
		@counter += 1
		new_contact = Contact.new
		@list.push(new_contact.set(@counter, first_name, last_name, email, notes))
		display_individual(first_name)
	end

	def invalid_attribute?(attribute)
		@list.each do |x|
			x.each_key{|y| true if y != attribute}
		end
	end

	def modify(name, attribute)
		@list.each do | x |
			if x[:first_name] == name
				puts "What would you like to change it to?"
				new_name = gets.chomp
				x[attribute.to_sym] = new_name
			end
		end

		#Will's clean code
		# contact = @contacts_array.detect do |contact|
		#  (contact.id == selection) || (contact.firstname == selection)  || contact. etc...
		# end
		# if contact
		#  contact.send(attribute + '=', modification) rescue nil
		# end
		#   contact #good practice to return object at end of method

		display_individual(new_name)
	end

	def display_all
		@list.each do |x|
			display_nicely(x)
		end
	end

	def display_individual(name)
		@list.each do | x |
			if x[:first_name] == name
				display_nicely(x)
			end
		end
	end

	def display_attribute(attribute)
		@list.each do | x |
			puts x[attribute] 
		end
	end

	def delete(id)
		@list.each do | x |
			if x[:id] = id
				@list.delete(x)
			end
		end
		@counter -= 1
	end

	def display_nicely(what)

	puts "\n \n"
	what.each_pair {|key,value| puts "#{key}:  #{value}"}
	puts "\n\n"

	end


end