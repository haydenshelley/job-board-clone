class JobTagsController < ApplicationController
  def index
    @job_tags = JobTag.all
  end
  
  def new
    @job_tag = JobTag.new
    render :new
  end

  def create
    @job_tag = JobTag.create(
      job_id: params[:job_tag][:job_id],
      tag_id: params[:job_tag][:tag_id]
    )
    redirect_to "/tags"
  end
end
