class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to all_posts_path
  end

  def all
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to all_posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to all_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:skill, :hours)
  end
end
