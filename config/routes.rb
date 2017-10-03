Rails.application.routes.draw do
  
  get 'all_users' => 'admin#all_users'

  post 'edit_user' =>'admin#edit_user'

  get 'show_user' => 'admin#show_user'

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  get 'storefront/all_items'

  get 'storefront/items_by_category'

  get 'storefront/items_by_brand'

  get 'all_users' => 'products#all_users'

  get 'edit_user' => 'products#edit_user'

  devise_for :users
  resources :users
  resources :products

  # root 'products#index'

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category' 

  get 'branding' => 'storefront#items_by_brand'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
