class UserMailer < ApplicationMailer

  def password_reset(user)
    @user = user
    @url = "https://fbv-chur.herokuapp.com"
    mail(to: @user.email, subject: 'Passwort setzen')
  end
end
