class PostsController < ApplicationController

  def index
    @post = Post.new
    @room = Room.find(params[:room_id])
    @posts = @room.posts.includes(:user)
  end

  def new
    @room = Room.find(params[:room_id])
    @post = Post.new
  end


  def create
    @room = Room.find(params[:room_id])
    @post = @room.posts.new(post_params)
    if @post.save
      redirect_to room_posts_path(@room)
    else
      @posts = @room.posts.includes(:user)
      render :index
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :root
  end


  private

  def post_params
    params.require(:post).permit(:title, :memo, :category_id, :deadline_id, :image).merge(user_id: current_user.id)
  end

end