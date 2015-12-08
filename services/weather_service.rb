require 'active_support'
require 'active_support/core_ext'
require 'sinatra/reloader' if development?

class WeatherService
  # 下記から天気予報を取得したいIDを見つける
  # http://weather.livedoor.com/forecast/rss/primary_area.xml
  CITY = 280010

  # 暑い・寒い閾値
  HOT_TEMP = 25
  COLD_TEMP = 10

  def self.hot_tomorrow?
    tomorrow_max_temperature >= HOT_TEMP
  end

  def self.cold_tomorrow?
    tomorrow_min_temperature <= COLD_TEMP
  end

  def self.tomorrow_max_temperature
    tomorrow_temperature.first
  end

  def self.tomorrow_min_temperature
    tomorrow_temperature.last
  end

  def self.tomorrow_temperature
    # 「明日」といいつつ、たとえば午前1時に調べたときには「今日」が返るようにしたい
    # 午前3時までは「昨日」扱いとし、3時間戻してから翌日の日付を求める
    tomorrow = 3.hours.ago.tomorrow.strftime('%Y-%m-%d')

    temp = weather_forecast[:forecasts].first { |_| _[:date] == tomorrow }[:temperature]
    [temp[:max][:celsius].to_i, temp[:min][:celsius].to_i]
  end

  private
  def self.weather_forecast
    JSON.parse(HTTParty.get("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{CITY}").body).deep_symbolize_keys
  end
end
