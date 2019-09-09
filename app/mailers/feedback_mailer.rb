# frozen_string_literal: true

class FeedbackMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.send_feedback.subject
  #
  def send_feedback(user)
    @user = user

    mail to: 'azakharko@gmail.com', subject: 'Hello'
  end
end
