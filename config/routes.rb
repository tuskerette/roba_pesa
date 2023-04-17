Rails.application.routes.draw do
  root "entries#index"

  resources :entries, only: %i[index new create destroy]
end
