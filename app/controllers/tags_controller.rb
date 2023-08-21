class TagsController < ApplicationController
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
    @Tag.update(
      name: params[:tag][:name],
    )
    redirect_to "/tags"
  end
end
