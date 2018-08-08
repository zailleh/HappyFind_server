Rails.application.routes.draw do
  root :to => 'suppliers#index'

  get '/skill_categories' => 'skill_categories#index'

  get '/suppliers/:id/services' => 'services#supplier_services'

  get '/suppliers' => 'suppliers#index'
  post '/search_suppliers' => 'suppliers#search'

  resources :suppliers, :only => [:new, :create, :index, :show] # 7 CRUD methods for suppliers
  resources :services, :only => [:index]
  resources :orders, :only => [:index, :new, :create]

  post '/orders/create' => 'orders#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/session' => 'suppliers#index'

end
