Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :newsletters
  end

  resources :subscribers, only: [:index, :create], path: :subscribe_newsletter
end

