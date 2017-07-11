class TherapistsController < ApplicationController
	def index
		@therapists = Therapist.all
	end

	def show
		@therapist = Therapist.find(params[:id])
	end

	def new
		@therapist = Therapist.new
	end

	def create
		@therapist = Therapist.new(therapist_params)
		if @therapist.save
			redirect_to @therapist
		else
			@errors = @therapist.errors.full_messages
			render "new"
		end
	end

	def edit
		@therapist = Therapist.find(params[:id])
	end

	def update
		@therapist = Therapist.find(params[:id])
		if @therapist.update(therapist_params)
			redirect_to @therapist
		else
			@errors = @therapist.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@therapist = Therapist.find(params[:id])
		@therapist.destroy
		redirect_to root_path
	end

	private
	def therapist_params
		params.require(:therapist).permit(:pt_db_id, :status, :username, :password)
	end
end