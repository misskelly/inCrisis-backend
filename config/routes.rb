Rails.application.routes.draw do

  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      namespace :locations do
        get "/sort", to: 'sort#index'
        post "/information_text", to: 'information_text#create'
      end

      resources :locations, only: [:index]
    end
  end

end
