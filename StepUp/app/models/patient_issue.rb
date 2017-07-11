class PatientIssue < ApplicationRecord
	belongs_to :patient
	belongs_to :issue
end