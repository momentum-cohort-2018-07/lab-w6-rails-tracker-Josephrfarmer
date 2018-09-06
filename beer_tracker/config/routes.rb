Rails.application.routes.draw do
  namespace :api do
    resources :beers
  end
end

