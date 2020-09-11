Rails.application.routes.draw do
  get '/', to: 'top#index'
  get '*others', to: 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
