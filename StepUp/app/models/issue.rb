class Issue < ApplicationRecord

	has_many :patient_issues
	has_many :therapist_issues
	has_many :request_issues

	has_many :patients, through: :patient_issues
	has_many :therapists, through: :therapist_issues
	has_many :requests, through: :request_issues

	validates_presence_of :name

end
