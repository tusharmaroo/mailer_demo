class UserMailer < ActionMailer::Base
  default from: "welcome@abc.com"
    def send_welcome_message(user)
      mail=user.email
      send_mail= mail(to: mail,
                      subject: 'Your account has been created!') do |format|
                        format.html { render 'welcome_user' }
                      end
     send_mail.deliver!
    end
end
  