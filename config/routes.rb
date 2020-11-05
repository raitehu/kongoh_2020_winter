# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :members
  get '/link/index'
  get '/manga/index'
  get '/recital_record/index'
  get '/about_kongoh/index'
  get '/welcome_event/index'
  get '/recital_plan/index'
  get '/', to: 'top#index', as: 'root'
  get '/about', to: 'about_kongoh#index', as: 'about'
  get '/recital_record', to: 'recital_record#index', as: 'recital_record'
  get '/recital_plan', to: 'recital_plan#index', as: 'recital_plan'
  get '/manga', to: 'manga#index', as: 'manga'
  get '/link', to: 'link#index', as: 'link'

  namespace :management do
    get '/', to: 'root#index', as: 'root'

    get '/welcome_event', to: 'welcome_event#index', as: 'welcome_event'
    post '/welcome_event', to: 'welcome_event#create'
    get '/welcome_event/:id/', to: 'welcome_event#edit'
    post '/welcome_event/:id/', to: 'welcome_event#update'
    get '/welcome_event/:id/destroy', to: 'welcome_event#destroy'

    get '/recital', to: 'recital#index', as: 'recital'
    post '/recital', to: 'recital#create'
    get '/recital/:id/', to: 'recital#edit'
    post '/recital/:id/', to: 'recital#update'
    get '/recital/:id/destroy', to: 'recital#destroy'

    get '/commentary', to: 'commentary#index', as: 'commentary'
    post '/commentary', to: 'commentary#create'
    get '/commentary/:id/', to: 'commentary#edit'
    post '/commentary/:id/', to: 'commentary#update'
    get '/commentary/:id/destroy', to: 'commentary#destroy'

    get '/link', to: 'link#index', as: 'link'
    post '/link', to: 'link#create'
    get '/link/:id/', to: 'link#edit'
    post '/link/:id/', to: 'link#update'
    get '/link/:id/destroy', to: 'link#destroy'

    get '*others', to: 'root#index'
  end

  get '*others', to: 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
