Rails.application.routes.draw do
  devise_for :users  
  root 'welcome#index'

  resources :products
  resources :order_details
  resources :orders
  
  

  get "checkout" => "checkout#show"
  get "checkout/success" => "checkout#success"
  



  #Added for testing, remove after creating M & C
  #get 'product/home'
end
