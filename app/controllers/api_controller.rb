class ApiController < ApplicationController
  def ohayo
    HueService.living_on!

    render json: { status: 'OK', message: '今日も一日がんばりましょう！' }
  end

  def oyasumi
    HueService.off!

    # TODO 起きる時刻をカレンダーから予定を読み取って判断するようにしたい
    if WeatherService.cold_tomorrow?
      AirConService.heat_after_5_hours!
    elsif WeatherService.hot_tomorrow?
      AirConService.cold_after_5_hours!
    else
      AirConService.off!
    end

    render json: { status: 'OK', message: 'おつかれさまでした！' }
  end

  def ittekimasu
    HueService.off!
    AirConService.off!
    RoombaService.clean_if_interval!

    render json: { status: 'OK', message: 'いってらっしゃい！' }
  end

  def tadaima
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

    render json: { status: 'OK', message: 'おかえりー！' }
  end
end
