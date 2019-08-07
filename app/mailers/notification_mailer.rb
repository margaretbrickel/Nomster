class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = commemnt.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
         subject: "A comment has been added to your place")
  end
end
