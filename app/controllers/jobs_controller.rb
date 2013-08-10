class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job =  Job.new
  end

  def create
    @job = Job.new(params[:job])

    if @job.save!
      redirect_to jobs_path, notice: "This job has been posted"
    else
      render action: "new"
    end
  end
end
