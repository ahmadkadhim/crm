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
		puts @list
	end

	def modify(name, attribute)
		@list.each do | x |
			if x[:first_name] == name
				puts "What would you like to change it to?"
				x[attribute.to_sym] = gets.chomp
			end
		end
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