FullStackTalks::Application.routes.draw do
  devise_for :people

  root :to => 'pages#index'
  resources :events do
    resources :talks
  end
  resources :talks
  resources :people, only: [:index, :show]
  resources :jobs
  match 'about' => 'pages#about'
  match 'contact' => 'pages#contact'
end
