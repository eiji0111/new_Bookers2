class RelationshipsController < ApplicationController

  def follow
    current_user.follow(params[:id])
    redirect_back fallback_location: @user
  end

  def unfollow
    current_user.unfollow(params[:id])
    redirect_back fallback_location: @user
  end

  def followed
    user = User.find(params[:id])
    @followeds = user.following_user.all
  end
  
  def follower
    user = User.find(params[:id])
    @followers = user.follower_user.all
  end
end
