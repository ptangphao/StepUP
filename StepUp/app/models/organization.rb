class Organization < ApplicationRecord

	has_secure_password
	
	has_many :patients
	has_many :requests

	validates_presence_of :name, :contact, :phone, :email, :username, :password_digest
	validates_uniqueness_of :email, :username

end
