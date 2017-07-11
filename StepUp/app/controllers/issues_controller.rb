class IssuesController < ApplicationController
	def new
		@issue = Issue.new
	end

	def create
		@issue = Issue.new(issue_params)
		if @issue.save
			redirect_to root_path
		else
			@errors = @issues.errors.full_messages
			render "new"
		end
	end

	private
	def issue_params
		params.require(:booking).permit(:issuable_type, :issuable_id)
	end
end
