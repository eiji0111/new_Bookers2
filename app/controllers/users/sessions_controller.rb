class Users::SessionsController < Devise::SessionsController
  before_action :reject_inactive_user, only: [:create]

  def reject_inactive_user
    @user = User.find_by(name: params[:user][:name])
    if @user
      if @user.valid_password?(params[:user][:password]) && @user.is_valid == false
        flash[:notice] = "退会済みのユーザーです"
        redirect_to new_user_session_path
      end
    end
  end
end