class JobsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]


  def index
    @jobs = Job.all
    render :index
  end

  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end

  def new
    @job = Job.new
    render :new
  end

  def create
    @job = Job.create(
      company_id: params[:job][:company_id],
      title: params[:job][:title],
      description: params[:job][:description],
      url: params[:job][:description],
      location: params[:job][:location],
      salary_range: params[:job][:salary_range])
    redirect_to "/companies"
  end

  def edit
    @job = Job.find_by(id: params[:id])
    render :edit
  end

  def update
    @job = Job.find_by(id: params[:id])
    @job.update(
      company_id: params[:job][:company_id],
        title: params[:job][:title],
        description: params[:job][:description],
        url: params[:job][:description],
        location: params[:job][:location],
        salary_range: params[:job][:salary_range])
    redirect_to "/jobs"
  end

  def destroy
    @job = Job.find_by(id: params[:id])
    @job.destroy
    redirect_to "/companies", status: :see_other
  end


end
