Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_page#top'
  # root to: 'static_page#top'  # 上記はこれの省略形

  #
  # ログイン
  #
  get 'users/log_in', to: 'sessions#new'
  post 'users/log_in', to: 'sessions#create'
  get 'users/log_out', to: 'sessions#delete'
end
