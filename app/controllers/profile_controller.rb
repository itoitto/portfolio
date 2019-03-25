class ProfileController < ApplicationController
  def edit
    @user = User.find_by(id: current_user.id)
  end

  def update
  end

end
