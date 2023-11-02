class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_message.subject
  #
  def welcome_message
    @greeting = "Hi"
    mail to: "to@example.org", subject: 'Bienvenue chez Solstice !!'
  end
end
