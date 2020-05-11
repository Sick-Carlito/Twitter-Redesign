# frozen_string_literal: true

class UsersController < ApplicationController #:nodoc: all
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
  end

  def edit
    @user = User.find(params[:id])
  end
end
