Rails.application.routes.draw do
root to: 'schedules#index'

get '/shedules/serch', to: 'schedule#search'
  resources :schedules, only: [:index,:new, :create, :show, :edit, :update] do
    collection do
      get 'search'
    end
  end
end