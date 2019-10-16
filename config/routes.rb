Rails.application.routes.draw do
  root to: 'leagues#index'
  get 'raw', to: 'leagues#raw'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
