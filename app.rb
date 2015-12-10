require 'sinatra'
require 'sinatra/json'

require 'hamlit'

require_relative 'services/hue_service'
require_relative 'services/air_con_service'
require_relative 'services/weather_service'
require_relative 'services/roomba_service'

set :bind, '0.0.0.0'

get '/' do
  haml :index
end

post '/ohayo' do
  HueService.living_on!

  json(status: 'OK', message: '今日も一日がんばりましょう！')
end

post '/oyasumi' do
  HueService.off!

  # TODO 起きる時刻をカレンダーから予定を読み取って判断するようにしたい
  if WeatherService.cold_tomorrow?
    AirConService.heat_after_5_hours!
  elsif WeatherService.hot_tomorrow?
    AirConService.cold_after_5_hours!
  else
    AirConService.off!
  end

  json(status: 'OK', message: 'おつかれさまでした！')
end

post '/ittekimasu' do
  HueService.off!
  AirConService.off!
  RoombaService.clean_if_interval!

  json(status: 'OK', message: 'いってらっしゃい！')
end

post '/tadaima' do
  HueService.living_on!

  # TODO タイミングによっては今日の気温が消えるのでなんとかする
  # TODO 室温から判断するようにしたい
  if WeatherService.cold_now?
    AirConService.heat!
  elsif WeatherService.hot_now?
    AirConService.cold!
  else
    AirConService.off!
  end

  json(status: 'OK', message: 'おかえりー！')
end
