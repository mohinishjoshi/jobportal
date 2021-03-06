class UserJobsController < ApplicationController
  before_filter :require_user_signed_in, :only => [:create]
  def index
    @jobs = UserJob.where(:user_id => current_user.id)
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    user_job = UserJob.new
    user_job.user_id = current_user.id
    user_job.job_id = params[:id]
    if user_job.save
      flash[:success] = "Successfully applied for the job."
    else
      flash[:error] = "Sorry there was an error. \n user_job.errors"
    end
    redirect_to job_path(params[:id])
  end
end
