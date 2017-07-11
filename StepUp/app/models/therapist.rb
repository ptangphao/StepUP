class Therapist < ApplicationRecord

	has_secure_password
	
	has_one :blacklist
	has_many :bookings
	has_many :therapist_issues
	has_many :issues, through: :therapist_issues

	validates_presence_of :pt_db_id, :status, :username, :password_digest
	validates_uniqueness_of :pt_db_id, :username

end
