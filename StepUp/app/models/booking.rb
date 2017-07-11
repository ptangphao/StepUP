class Booking < ApplicationRecord
	
	belongs_to :request
	belongs_to :therapist

	validates_presence_of :request_id, :therapist_id
	validates_uniqueness_of :request_id

end
