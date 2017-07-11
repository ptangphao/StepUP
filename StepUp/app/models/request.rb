class Request < ApplicationRecord

	belongs_to :organization
	belongs_to :patient
	has_many :request_issues
	has_many :issues, through: :request_issues

	validates_presence_of :organization_id, :patient_id, :time, :location
	
end
