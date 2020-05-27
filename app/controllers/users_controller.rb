# frozen_string_literal: true

class UsersController < ApplicationController #:nodoc: all
  before_action :authenticate_user!

  def index
    @users = User.all
    timeline_posts
  end

  def show

    
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
    @post = @user.posts.build
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def following
    @title = 'People You are Following!'
    @user = User.find(params[:id])
    @users = @user.following
    render partial: 'users/follow-form'
  end

  def followers
    @title = 'People Following You!'
    @user = User.find(params[:id])
    @users = @user.followers
    # render 'follow-form'
    render partial: 'users/follow-form'
  end
end
