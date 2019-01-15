class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.invite_friend.subject
  #
  def invite_friend
    @greeting = "Hi"

    mail to: "gehring.mg@gmail.com", subject: "Please sign up for our app!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.send_report.subject
  #
  def send_report
    @greeting = "Hi"

    mail to: "to@example.org", subject: "The report you requested."
  end
ends
