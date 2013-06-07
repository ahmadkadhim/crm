require_relative "database.rb"
require_relative "contact.rb"

class Runner

	def self.run

		d = Database.new
		while true
			puts "Options"
			puts "add"
			puts "modify"
			puts "display all"
			puts "display contact"
			puts "display attribute"
			puts "delete a contact"
			puts "exit"
			choice = gets.chomp.downcase
			print "\e[2J\e[f"
			case choice
				when "add"
					puts "Please enter the contact's first name"
					first_name = gets.chomp
					puts "Please enter the contact's last name"
					last_name = gets.chomp
					puts "Please enter the contact's email"
					email = gets.chomp
					puts "Please enter any additional notes"
					notes = gets.chomp
					d.add(first_name, last_name, email, notes)
				when "modify"
					
					puts "Please enter the name of the contact you want to modify"
					name = gets.chomp
					d.display_individual(name)
					puts "Which attribute would you like to modify? (id, first_name, last_name, email, notes)"
					attribute = gets.chomp
					
					puts "Please confirm if #{attribute} is what you'd like to change? y/n"
					confirmation = gets.chomp
					d.modify(name, attribute) if confirmation == "y"
					end
				when "display all"
					d.display_all
				when "display contact"
					puts "Please enter the name of the contact you're looking for"
					name = gets.chomp
					d.display_individual(name)
				when "display attribute"
					puts "Please enter the attribute you're looking for (id, first_name, last_name, email, notes)"
					attribute = gets.chomp.to_sym
					d.display_attribute(attribute)
				when "delete a contact"
					puts "Please enter the ID of the contact you would like to delete"
					id = gets.chomp
					d.delete(id)
				when "exit"
					break
				else 
					puts "Invalid Input - please type in one of the choices verbatim."
			end
		end
	end
end


Runner.run