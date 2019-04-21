class MemberController < ApplicationController
  def edit
    @user = User.find_by(id: current_user.id)
  end

  def update
    @user = User.find_by(id: current_user.id)
    @user.username = params[:username]
    @user.reset_password(params[:password] , params[:password_confirmation])
    if @user.save
      sign_in(@user, bypass: true) if current_user.id == @user.id
      flash[:notice]="ユーザー情報の更新に成功しました。"
      redirect_to("/posts/index")
    else
      sign_in(@user, bypass: true) if current_user.id == @user.id
      flash[:notice]="ユーザー情報の更新に失敗しました。"
      render("/member/:id/edit")
    end
  end
end
