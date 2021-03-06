# frozen_string_literal: true

class PostsController < ApplicationController #:nodoc: all
  before_action :authenticate_user!

  def index
    @post = Post.new
    timeline_posts
    @users = User.all
    @user = User.new
  end

  # def show
  #   @user = User.find(params[:id])
  #   @posts = @user.posts.ordered_by_most_recent
  #   @post = @user.posts.build
  # end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to(posts_path, notice: 'Post was successfully created.')
    else
      timeline_posts
      render(:index, alert: 'Post was not created.')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    flash[:notice] = 'Post was successfully updated.'
    redirect_to(posts_path)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(posts_path)
    flash[:notice] = 'Post was successfully destroyed.'
  end

  private

  def timeline_posts
    @timeline_posts ||= Post.all.ordered_by_most_recent.includes(:user)
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
