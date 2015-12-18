Rails.application.routes.draw do
  root controller: :home, action: :home
  post 'api/ohayo'
  post 'api/oyasumi'
  post 'api/ittekimasu'
  post 'api/tadaima'
end
