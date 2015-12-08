require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'services/hue_service'
require_relative 'services/air_con_service'
require_relative 'services/weather_service'
require_relative 'services/roomba_service'

get '/oyasumi' do
  HueService.living_off!

  if WeatherService.cold_tomorrow?
    AirConService.heat_after_5_hours!
  elsif WeatherService.hot_tomorrow?
    AirConService.cold_after_5_hours!
  else
    AirConService.off!
  end
end

get '/ittekimasu' do
  HueService.living_off!
  AirConService.off!
  RoombaService.clean_if_interval!
end
