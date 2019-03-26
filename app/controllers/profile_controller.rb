class ProfileController < ApplicationController
  def edit
    @user = User.find_by(id: current_user.id)
  end

  def update
    @user = User.find_by(id: current_user.id)
    @user.id = current_user.id
    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]
    if params[:user_pic]
      image = params[:user_pic]
      @user.image_name = "#{current_user.id}.jpg"
      File.binwrite("public/image/#{@user.image_name}",image.read)
    end
    if @user.save
      flash[:notice]="ユーザー情報の更新に成功しました。"
    else
      flash[:notice]="ユーザー情報の更新に失敗しました。"
    end
  end

end
