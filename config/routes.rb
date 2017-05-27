Rails.application.routes.draw do
	mount Attachinary::Engine => '/attachinary'
  devise_for :users

  resources :cases do
  resources :updates, only: :create
   end

authenticated :user do
      root to: "cases#index", as: :authenticated_root
      get "domains/:domain_type" => "domains#filter", as: :domain_filter
end
   
root to: "pages#landing"

  root to: "pages#landing"

  get "features" => "pages#features"

  get "landing" => "pages#landing"

  resources :users, only: [:show]

end
