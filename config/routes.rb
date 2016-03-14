Rails.application.routes.draw do

  root "companies#index"
  get "/companies" => "companies#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
     resources :companies, only: [:index]
    end
  end
end
