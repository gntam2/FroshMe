class UsersTopicsController < ApplicationController
	  def follow
    @topic = Topic.find(params[:query])
    @user = current_user
    if UsersTopics.create(user_id: @user.id, topic_id: @topic.id)
      flash[:notice] = "You have successfully followed this topic"
      redirect_to root_path
    else 
      flash[:notice] = "There was a problem following that topic"
      redirect_to root_path
    end 
  end 
end
