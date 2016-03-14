Rails.application.routes.draw do

  root "companies#index"
  get "/companies" => "companies#index"

end
