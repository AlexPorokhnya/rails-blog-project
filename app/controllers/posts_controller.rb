# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end
  def create
    @post = Post.new posts_params
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(posts_params)
      redirect_to posts_path
    else
      render :new
    end
  end
  private

  def posts_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find params[:id]
  end
end
