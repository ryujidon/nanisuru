Rails.application.routes.draw do
  get 'schedule/index'
  root to: "schedule#index"
end