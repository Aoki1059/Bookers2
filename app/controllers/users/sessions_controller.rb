class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.guest
    # ゲストユーザーでログインさせ、詳細ページに遷移する
    sign_in user
    redirect_to user_path(user), notice: 'guestuserでログインしました。'
  end
end