Rails.application.routes.draw do
  get "/persons" => "people#index"
  post "/person" => "people#create"
end