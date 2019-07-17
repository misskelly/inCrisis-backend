Rails.application.routes.draw do

  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      namespace :locations do
        get "/sort", to: 'sort#index'
      end 
    end
  end


end
