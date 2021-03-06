Rails.application.routes.draw do
  resources :characters, only: [:index, :show]
  resources :players, except: [:new, :edit]
  resources :play_as_characters
  resources :play_against_characters
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
