
class Contact

	attr_accessor :contact, :id, :first_name, :last_name, :email, :notes

	def initialize
		@contact = {}
		# @id = id
		# @first_name = first_name
		# @last_name = last_name
		# @email = email
		# @notes = notes
	end

	def set(counter, first_name, last_name, email, notes)
		@contact = 	{
			:id => counter,
			:first_name => first_name,
			:last_name => last_name,
			:email => email,
			:notes => notes
		}
	end

end




