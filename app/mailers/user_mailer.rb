class UserMailer < ApplicationMailer
  default from: "choresapplication@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
  	@user = user
    mail(to: user.email, subject: "You've signed up do Chores!")
  end

  def weekly_chores(user)
    @user = user
    @chores = user.chores.created_in_last_week
    mail(to: user.email, subject: "Weekly Chores")
  end
end
