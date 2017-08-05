class ApiController < ApplicationController
  def ohayo
    LightService.living_on!

    render json: { status: 'OK', message: 'おはようございます！' }
  end

  def oyasumi
    LightService.all_off!

    render json: { status: 'OK', message: 'おやすみなさい！' }
  end

  def ittekimasu
    LightService.all_off!
    AirConService.off!

    render json: { status: 'OK', message: 'いってらっしゃい！' }
  end

  def tadaima
    LightService.living_on!

    if WeatherService.cold_now?
      AirConService.heat!
    elsif WeatherService.hot_now?
      AirConService.cool!
    else
      AirConService.off!
    end

    render json: { status: 'OK', message: 'おかえりなさい！' }
  end
end
