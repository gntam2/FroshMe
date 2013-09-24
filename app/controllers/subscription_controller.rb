class SubscriptionController < ApplicationController
  def follow
  	@topic = Topic.find(params[:query])
  	@user = current_user
  	if Subscription.create(user_id: @user.id, topic_id: @topic.id)
  	  flash[:notice] = "You have successfully followed #{@topic.name}"
  	  redirect_to "/institution/#{@user.institution_id}"
  	else 
  	  flash[:notice] = "There was a problem following that topic"
  	  redirect_to "/institution/#{@user.institution_id}"
  	end 
  end

  def unfollow
    @topic = Topic.find(params[:query])
    @user = current_user
    if @topic.unfollow!(@user)
      flash[:notice] = "You no longer follow #{@topic.name}"
      redirect_to "/institution/#{@user.institution_id}"
    else
      flash[:notice] = "There was a problem unfollowing the topic"
      redirect_to "/institution/#{@user.institution_id}"
    end
  end
end
