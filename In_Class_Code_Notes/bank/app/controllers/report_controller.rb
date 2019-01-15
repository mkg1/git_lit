class ReportController < ApplicationController
  def search
  end

  def thank_you
    @branch = Branch.find(params[:branch][:id])
    MakeReportJob.perform_later(@branch)
  end

  def write_email
  end

  def send_email
      ReportMailer.invite_friend.deliver_now
  end
end
