class BookingsController < ApplicationController
	def show
		@booking = Booking.find(params[:id])
	end

	def new
		@therapist = Therapist.find(params[:therapist_id])
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			redirect_to @booking.therapist
		end
	end

	def edit
		@booking = Booking.find(params[:id])
		@therapist = @booking.therapist
	end

	def update
		@booking = Booking.find(params[:id])
		if @booking.update(booking_params)
			redirect_to @booking.therapist
		else
			@errors = @booking.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
		@therapist = @booking.therapist
		@booking.destroy
		redirect_to @therapist
	end

	private
	def booking_params
		params.require(:booking).permit(:request_id, :therapist_id)
	end
end
