
  class NotificationsMailer < ActionMailer::Base

  default :from => "humaira.cmu@gmail.com"
  default :to => "abhayjoseph@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "trial")
  end

end

