class AlarmJob < ActiveJob::Base
  queue_as :default

  def perform
    HueService.living_on!
    system("mpg321 '#{HomeButtonsRails::Application.config.alarm_mp3_file}'")
  end
end
