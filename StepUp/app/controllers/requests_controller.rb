class RequestsController < ApplicationController
  include SearchHelper
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
      @i_list = I_LIST
      @cl_list = CL_LIST
      @ce_list = CE_LIST
      @cc_list = CC_LIST
      @one_to_ten = ONE_TO_TEN
    @request = Request.new
    @patient = Patient.all.sample
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      session[:request_id] = @request.id
      redirect_to '/search'
      # redirect_to @request
      # we're not redirecting to the request anymore
    else
      @errors = @request.errors.full_messages
      @i_list = I_LIST
      @cl_list = CL_LIST
      @ce_list = CE_LIST
      @cc_list = CC_LIST
      @one_to_ten = ONE_TO_TEN
      # add fake result for presentation
      redirect_to '/search'
      # render "new"
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to @request
    else
      @errors = @request.errors.full_messages
      render "edit"
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to root_path
  end

  private
  def request_params
    params.require(:request).permit(:organization_id, :patient_id, :time, :location, :notes)
  end
end