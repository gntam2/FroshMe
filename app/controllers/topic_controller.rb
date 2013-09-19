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
    @topic = Topic.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def follow
    @topic = Topic.find(params[:query])
    @user = current_user
    if users_topics.create(user_id: @user.id, topic_id: @topic.id)
      flash[:notice] = "You have successfully followed this topic"
      redirect_to root_path
    else 
      flash[:notice] = "There was a problem following that topic"
      redirect_to root_path
    end 
  end 

  private 

  def topic_params
    params.require(:topic).permit :name, :institution_id
  end


end
