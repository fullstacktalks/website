FullStackTalks::Application.routes.draw do
  root :to => 'pages#index'
  resources :events do
    resources :talks
  end
  resources :talks
  resources :people
  match 'about' => 'pages#about'
  match 'contact' => 'pages#contact'
end
