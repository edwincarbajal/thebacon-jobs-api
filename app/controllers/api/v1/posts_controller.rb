class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
    render status: :ok, json: {message: 'Loaded posts', data: @posts}
  end

  def show
    render status: :ok, json: {message: 'Loaded Post', data: @post}
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render status: :ok, json: {message: 'Succesfully created Post', data: @post}
    else
      render status: :unprocessable_entity, json: {errors: @post.errors}
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
      params.permit(:position, :description, :employer, :location, :category)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
