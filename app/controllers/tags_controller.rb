class TagsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by(id: params[:id])
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    redirect_to "/tags", status: :see_other
  end
end
