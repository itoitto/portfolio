class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: current_user.id).limit(3).order(created_at: :desc)
    #@posts = Post.limit(3).order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(practice_name: params[:title],practice_content: params[:content],practice_date: params[:date],user_id: current_user.id)
    if @post.save
      flash[:notice] = "投稿が完了しました。"
      redirect_to("/posts/index")
    else
      flash[:notice] = "投稿に失敗しました。"
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.practice_date = params[:date]
    @post.practice_name = params[:title]
    @post.practice_content = params[:content]
    if @post.save
      flash[:notice] = "更新に成功しました。"
      redirect_to("/posts/index")
    else
      flash[:notice] = "更新に失敗しました。"
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end
