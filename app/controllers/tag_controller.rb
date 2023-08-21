class TagController < ApplicationController

  def show
    @tag = Tag.find_by(id: params[:id])
    render :show
  end
end
