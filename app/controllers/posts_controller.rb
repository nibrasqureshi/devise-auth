# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  before_action :authenticate_admin!, only: %i[new edit destroy]
  before_action :authpost, except: %i[new index navaction create show]

  def new
    @post = Post.new
  end

  def destroy
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
    authpost
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
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

  def authpost
    authorize @post
  end
end
