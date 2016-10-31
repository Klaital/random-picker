Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  # resources :powerball_picks
  resources :users do
    resources :powerball_picks
  end

  get '/pick', to: 'pick#pick'
  get '/powerball', to: 'pick#powerball'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
