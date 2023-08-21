class TagsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by(id: params[:id])
  end

  def edit
    @tag = Tag.find_by(id: params[:id])
    render :edit
  end

  def update
    @tag = Tag.find_by(id: params[:id])
    @tag.update(
      name: params[:tag][:name],
    )
    redirect_to "/tags"
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    @tag.destroy
    redirect_to "/tags", status: :see_other
  end

end