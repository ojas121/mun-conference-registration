class UserMailer < ActionMailer::Base
  default from: "walajmy@gmail.com", bcc: "teami3s.2012@gmail.com"

  
  def new_school_msg(school)
     @school = school
     mail(:to => school.email, :subject => "Conference Participation Confirmation")
   end

   def edit_school_msg(school)
     @school = school
     mail(:to => school.email, :subject => "Countries assigned for your school")
   end

   def new_user_msg(user)
      @user = user
      mail(:to => user.email, :subject => "Sing up confirmation")
    end
  
def update_country_list_msg(country_list)
     @country_list = country_list
     mail(:to => country_list.school.email, :subject => "Your school has been assigned to a country.")
   end

end
