namespace :alarm do
  desc '予定を取得して目覚ましをセットする'

  task set: :environment do
    AlarmService.set
  end
end
