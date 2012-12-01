class UserMailer < ActionMailer::Base

  default from: "walajmy@gmail.com", bcc: "teami3s.2012@gmail.com"

  def new_school_msg(school)
    @school = school
    mail(:to => school.email, :subject => "Conference Participation Confirmation")
  end

  def update_country_list_msg(country_list)
    @country_list = country_list
    mail(:to => country_list.school.email, :subject => "Countries have been assigned to your school")
  end

  def new_conference_msg(conference)
    @conference = conference
    mail(:to => conference.user.email, :subject => "You have been assigned a conference")
  end

end
