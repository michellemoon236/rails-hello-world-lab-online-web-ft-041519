Rails.application.routes.draw do
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello_world', to: 'static#hello_world'
end
