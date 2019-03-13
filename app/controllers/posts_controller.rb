class PostsController < ApplicationController
  def index
    @posts = Post.last(3)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(practice_name: params[:title],practice_content: params[:content],practice_date: params[:date])
    @post.save
    redirect_to("/posts/index")
  end

end
