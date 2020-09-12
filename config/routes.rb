Rails.application.routes.draw do
  get 'recital_plan/index'
  get '/', to: 'top#index', as: 'root'
  get 'recital_plan', to: 'recital_plan#index', as: 'recital_plan'
  get '*others', to: 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
