class PatientsController < ApplicationController
	def index
		@patients = Patient.all
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def new
		@patient = Patient.new
		@organization = Organization.find(params[:organization_id])
	end

	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			redirect_to @patient
		else
			@errors = @patient.errors.full_messages
			render "new"
		end
	end

	def edit
		@patient = Patient.find(params[:id])
		@organization = @patient.organization
	end

	def update
		@patient = Patient.find(params[:id])
		if @patient.update(patient_params)
			redirect_to @patient
		else
			@errors = @patient.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@organization = @patient.organization
		@patient.destroy
		redirect_to @organization
	end

	private
	def patient_params
		params.require(:patient).permit(:first_name, :last_name, :zip_code, :age, :sex, :language, :organization_id, :notes)
	end
end
