Rails.application.routes.draw do
  namespace :api do
    resources :beers do
      resources :notes 
    end
  end
end

