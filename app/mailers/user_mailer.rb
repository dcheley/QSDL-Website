class UserMailer < ApplicationMailer
  default to: "cheleydan@gmail.com"

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: @email, subject: "#{@name} is interested in joining QSDL!")
  end
end
