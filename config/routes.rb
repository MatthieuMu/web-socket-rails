Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :chatrooms, except: [:new, :edit]
  resources :messages, except: [:new, :edit]
  resources :users, except: [:new, :edit]

end
