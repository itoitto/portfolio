class CommunityController < ApplicationController

  layout 'community_app.html.erb'

  def index
    @community = Community.search(params[:search])
    @community = @community.page(params[:page]).per(5)
  end

  def new
  end

  def create
    @community = Community.new(community_name: params[:community_name],region: params[:prefucture],description: params[:content],community_pic: params[:image_name],daihyo_id: current_user.id)
    if @community.save
      @users = User.find_by(id: current_user.id)
      @users.community_id = @community.id
      if @users.save
        flash[:notice] = "更新に成功しました。"
        redirect_to("/community/index")
      else
        flash[:notice] = "更新に失敗しました。"
        render("community/new")
      end
    else
      flash[:notice] = "更新に失敗しました。"
      render("community/new")
    end
  end

end
