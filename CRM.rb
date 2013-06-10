#CRM

class Database

	def initialize
		@list = []
	end

	def add(first_name, last_name, email, notes)
		new_contact = Contact.new
		@list.push(first_name, last_name, email, notes)
	end

	def modify

	end

	def display_all
		puts @list
	end

	def display_individual(name)
		@list.each do | x |
			if x[:first_name] == name
				puts x
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
	end

end

class Contact

	attr_accessor: @contact, @id, @first_name, @last_name, @email, @notes

	def initialize(id, first_name, last_name, email, notes)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end

	def set
		@contact = 	{
		:id => @id
		:first_name => 
		:last_name =>
		:email =>
		:notes =>
		}

	end



class Runner



	def self.run

		puts "Options"
		puts "add"
		puts "modify"
		puts "display all"
		puts "display contact"
		puts "display attribute"
		puts "delete a contact"
		puts "exit"

		choice = gets.chomp

		Select case choice
			when "add"
				puts "Please enter the contact's first name"
				first_name = gets.chomp
				"Please enter the contact's last name"
				last_name = gets.chomp
				"Please enter the contact's email"
				email = gets.chomp
				"Please enter any additional notes"
				notes = gets.chomp
				Database.add(first_name, last_name, email, notes)

			when "modify"
				Database.modify
			when "display all"
				Database.display_all
			when "display contact"
				puts "Please enter the name of the contact you're looking for"
				name = gets.chomp
				Database.display_individual(name)
			when "display attribute"
				puts "Please enter the attribute you're looking for (id, first_name, last_name, email, notes)"
				attribute = gets.chomp.to_sym
				Database.display_attribute(attribute)
			when "delete a contact"
				Database.delete
			when "exit"

		end
	end


end








