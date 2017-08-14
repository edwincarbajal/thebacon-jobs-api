class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
    render json: {status: 'SUCCESS', message: 'Loaded posts', data: @posts}, status: :ok
  end

  def show
    render json: {status: 'SUCCESS', message: 'Loaded Post', data: @post}, status: :ok
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: {message: 'Succesfully created Post', data: @post}, status: :created
    else
      render json: {status: 'ERROR', errors: @post.errors}, status: :unprocessable_entity
    end
  end

  def update
   @post.update(post_params)
   head :no_content
  end

   # DELETE /todos/:id
  def destroy
    @post.destroy
    head :no_content
  end

  private
    def post_params
      # whitelist params
      params.require(:post).permit(:position, :description, :employer, :location, :category)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
