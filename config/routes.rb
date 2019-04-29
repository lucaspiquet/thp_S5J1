Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static_pages/home'

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
end
