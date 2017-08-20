class Api::V1::PostsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
    render json: @posts, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: {status: 'ERROR', errors: @post.errors}, status: :unprocessable_entity
    end
  end

  def update
   @post.update(post_params)
   head :no_content
  end

  def destroy
    @post.destroy
    head :no_content
  end

  private
    def post_params
      # whitelist params
      params.require(:post).permit(:position, :description, :employer, :location, :category, :user_id)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
