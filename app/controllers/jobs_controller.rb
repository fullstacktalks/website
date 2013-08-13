class JobsController < ApplicationController
  def index
    @jobs = Job.all(:conditions => ["created_at > ?", 30.days.ago])
  end

  def show
     @job = Job.find(params[:id])

     respond_to do |format|
      format.html # show.html.erb
     end
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
