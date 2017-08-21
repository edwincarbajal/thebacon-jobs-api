class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.desc
    render json: @posts, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    @post = Post.create!(post_params)
    render json: @post, status: :created
  end

  def update
   @post.update!(post_params)
   head :no_content
  end

  def destroy
    @post.destroy
    head :no_content
  end

  private
    def post_params
      # whitelist params
      params.require(:post).permit(:position, :description, :employer, :location, :term, :categories)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
