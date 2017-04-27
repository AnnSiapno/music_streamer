Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/view_playlist'
  get 'welcome/delete_playlist'
  get 'welcome/remove_song'

  post 'welcome/create_playlist'
  post 'welcome/add_song_to_playlist'

  resources :welcome do
    collection { post :sort }
  end

  get 'profile/view'
  get 'profile/edit_page'
  get 'profile/edit'
  get 'profile/create_page'
  get 'profile/edit_success'

  get 'playlists/edit_success'
  get 'profile/edit_success'

  post 'profile/edit_success'
  post 'profile/edit'
  post 'profile/create'
  resources :playlists
  resources :songs
  devise_for :users
  resources :users
  root 'users#index'

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
end

end
