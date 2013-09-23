class TopicController < ApplicationController
  
  def new

  end

  def index
    @topics = Topic.all
    #@institution = Institution.find(params[:institution_id])
  end

  def create
    @topic = Topic.create(topic_params)
    if @topic.save
      flash[:notice] = "This topic was created"
      redirect_to root_path
    else
      flash[:notice] = "There was a problem creating your topic, please try again"
      redirect_to new_topic_path
    end 
  end

  def show
    topic = Topic.where(id: params[:id], institution_id: params[:institution_id])
    if topic.empty?
      @topic = nil
    else
      @topic = topic.first
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def topic_params
    params.require(:topic).permit :name, :institution_id
  end


end
