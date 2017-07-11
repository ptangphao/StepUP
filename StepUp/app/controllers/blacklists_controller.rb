class BlacklistsController < ApplicationController
	def create
		@blacklist = Blacklist.create(blacklist_params)
		redirect_to root_path
	end

	def destroy
		Blacklist.find(params[:id]).destroy
		redirect_to root_path
	end

	private
	def blacklist_params
		params.require(:blacklist).permit(:therapist_id)
	end
end
