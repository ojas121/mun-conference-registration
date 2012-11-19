class UserMailer < ActionMailer::Base
  default from: "walajmy@gmail.com", bcc: "teami3s.2012@gmail.com"

  
  def new_school_msg(school)
     @school = school
     mail(:to => school.email, :subject => "Conference Participation Confirmation")
   end
  
  
   def new_user_msg(user)
      @user = user
      mail(:to => user.email, :subject => "Sing up confirmation")
    end
  
end
