class MakeReportJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    File.open("mason.txt", 'w') do |f|
      f << "This class is rad"
      f << "We love cake"
      f << "They made this stupid unicorn thing"      
    end
  end
end
