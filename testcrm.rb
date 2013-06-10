require 'test/unit'
require_relative 'database.rb'
require_relative 'contact.rb'

class TestCRM < Test::Unit::TestCase

	def setup
		@contact = Contact.new
		@db = Database.new
		@first_name = "Ahmad"
		@last_name = "Kadhim"
		@email = "akadhim13@gmail.com"
		@notes = "no notes"
		@contact.set(1001, @first_name, @last_name, @email, @notes)
	end

	def test_set_contact_info
		assert @contact.id = 1001
		assert @contact.first_name = "Ahmad"
		assert @contact.last_name = "Kadhim"
		assert @contact.email = "akadhim13@gmail.com"
		assert @contact.notes = "no notes"
	end

	def test_modify_contact
		@db.modify("Ahmad", first_name)
		
	end

end


