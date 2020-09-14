Rails.application.routes.draw do
  get 'about_kongoh/index'
  get 'welcome_event/index'
  get 'recital_plan/index'
  get '/', to: 'top#index', as: 'root'
  get 'about', to: 'about_kongoh#index', as: 'about'
  get 'recital_plan', to: 'recital_plan#index', as: 'recital_plan'

  get 'welcome_event', to: 'welcome_event#index', as: 'welcome_event'
  get '*others', to: 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
