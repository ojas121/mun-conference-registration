class UserMailer < ActionMailer::Base

  default from: "walajmy@gmail.com", bcc: "teami3s.2012@gmail.com"

  def new_school_msg(school)
    @school = school
    mail(:to => school.user.email, :subject => "Request for Conference Registration received")
  end

  def update_delegation_assignment_msg(delegation_assignment)
    @delegation_assignment = delegation_assignment
    mail(:to => delegation_assignment.school.email, :subject => "Congrats! Your school has been accepted")
  end

  def new_conference_msg(conference)
    @conference = conference
    mail(:to => conference.user.email, :subject => "You have been assigned as a Conference Manager")
  end

end
