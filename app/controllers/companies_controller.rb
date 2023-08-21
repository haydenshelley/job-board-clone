class CompaniesController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  
  def index
    @companies = Company.all 
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(
      name: params[:company][:name],
      logo: params[:company][:logo],
      description: params[:company][:description],
    )
    redirect_to "/companies"
  end


  def edit
    @company = Company.find_by(id: params[:id])
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      name: params[:company][:name],
      logo: params[:company][:logo],
      description: params[:company][:description]
    )
    redirect_to "/companies"
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    redirect_to "/companies", status: :see_other
  end
end