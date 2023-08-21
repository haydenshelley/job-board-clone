class TagsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by(id: params[:id])
  end

  
  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.create(
     name: params[:tag][:name])
    redirect_to "/tags"
    
  end
end
