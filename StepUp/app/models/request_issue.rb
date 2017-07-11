class RequestIssue < ApplicationRecord
	belongs_to :request
	belongs_to :issue
end