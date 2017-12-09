Rails.application.routes.draw do
  root"phone_numbers#new"
  resources :phone_numbers, only: %i[new create]
  post "phone_numbers/verify" => "phone_numbers#verify"
end
