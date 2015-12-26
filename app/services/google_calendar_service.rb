class GoogleCalendarService
  # 今日の最初のイベントの開始時刻を返す
  # @return [ActiveSupport::TimeWithZone]
  def self.today_first_event_start_time
    today_first_event.start.date_time.in_time_zone
  end

  # 今日の最初のイベントを返す
  # @return [Google::APIClient::Schema::Calendar::V3::Event]
  def self.today_first_event
    today_events.first
  end

  # 今日のイベントをすべて返す
  # @return [Array<Google::APIClient::Schema::Calendar::V3::Event>]
  def self.today_events
    cal = client.discovered_api('calendar', 'v3')
    client.execute(
      api_method: cal.events.list,
      parameters: {
        calendarId: HomeButtonsRails::Application.config.google_calendar_id,
        orderBy: 'startTime',
        timeMin: Time.current.beginning_of_day.iso8601,
        timeMax: Time.current.end_of_day.iso8601,
        singleEvents: 'True'
      }
    ).data.items
  end

  # カレンダーの読み取りができる Google::APIClient を返す
  # @return [Google::APIClient]
  def self.client
    Google::APIClient.new(application_name: '').tap do |client|
      key = Google::APIClient::PKCS12.load_key(HomeButtonsRails::Application.config.google_calendar_pkcs12_key_file, 'notasecret')
      client.authorization = Signet::OAuth2::Client.new(
        token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
        audience: 'https://accounts.google.com/o/oauth2/token',
        scope: 'https://www.googleapis.com/auth/calendar.readonly',
        issuer: HomeButtonsRails::Application.config.google_calendar_iam_email,
        signing_key: key
      )
      client.authorization.fetch_access_token!
    end
  end
end
