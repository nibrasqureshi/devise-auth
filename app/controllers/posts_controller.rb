# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  # before_action :authenticate_admin!, only: %i[new edit destroy]

  def new
    @post = Post.new
  end

  def destroy
		
    authorize @post
    @post.destroy
    redirect_to root_path
  end

  def index
    @post = Post.order('created_at DESC')
  end

  def navaction
    javascript_include_tag 'nav'
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show; end

  def edit;
		authorize @post
  end


  def update
		authorize @post
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :admin_id)
  end
end
