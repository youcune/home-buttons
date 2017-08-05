class WeatherService
  # 下記から天気予報を取得したいIDを見つける
  # http://weather.livedoor.com/forecast/rss/primary_area.xml
  CITY = 280010

  # 暑い・寒い閾値
  HOT_TEMP = 27
  COLD_TEMP = 10

  def self.hot_now?
    today_max_temperature != 0 && today_max_temperature >= HOT_TEMP
  end

  def self.cold_now?
    today_min_temperature != 0 && today_min_temperature <= COLD_TEMP
  end

  def self.hot_tomorrow?
    tomorrow_min_temperature >= HOT_TEMP
  end

  def self.cold_tomorrow?
    tomorrow_min_temperature <= COLD_TEMP
  end

  def self.today_max_temperature
    today_temperature.first
  end

  def self.today_min_temperature
    today_temperature.last
  end

  def self.tomorrow_max_temperature
    tomorrow_temperature.first
  end

  def self.tomorrow_min_temperature
    tomorrow_temperature.last
  end

  def self.today_temperature
    temperature(Time.current)
  end

  def self.tomorrow_temperature
    # 「明日」といいつつ、たとえば午前1時に調べたときには「今日」が返るようにしたい
    # 午前3時までは「昨日」扱いとし、3時間戻してから翌日の日付を求める
    temperature(3.hours.ago.tomorrow)
  end

  def self.temperature(time)
    date = time.strftime('%Y-%m-%d')
    p "looking up tempeature for #{date} ..."
    temp = weather_forecast[:forecasts].select{ |_| _[:date] == date }.first[:temperature]
    [temp[:max].try(:[], :celsius).to_i, temp[:min].try(:[], :celsius).to_i]
  end

  private
  def self.weather_forecast
    url = "http://weather.livedoor.com/forecast/webservice/json/v1?city=#{CITY}"
    p "getting #{url} ..."
    json = JSON.parse(HTTParty.get(url).body)
    json.deep_symbolize_keys
  end
end
