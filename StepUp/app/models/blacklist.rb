class Blacklist < ApplicationRecord
	belongs_to :therapist

	validates_presence_of :therapist_id
end
