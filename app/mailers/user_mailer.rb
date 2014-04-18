class UserMailer < ActionMailer::Base
  default from: "jdspiral@gmail.com"

  def sign_up_notification(user)

      @user = user

      mail(:to => @user.email,
             :name => @user.name,
             :subject => "Thanks for Signing Up")   
  end
end
