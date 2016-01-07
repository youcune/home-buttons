class AlarmService
  # 最初の予定の何分前に鳴らすか？
  PRIOR_TIME = 90.minutes

  def self.set(prior_time = PRIOR_TIME)
    alarm_time = GoogleCalendarService.today_first_event_start_time - prior_time
    Mp3PlayerJob.set(wait_until: alarm_time).perform_later(HomeButtonsRails::Application.config.alarm_mp3_file)
  end
end
