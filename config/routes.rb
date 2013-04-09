TaborMessaging::Application.routes.draw do
  
  get "chats/room"

  get "sessions/new"

  get "sessions/create"
  
  get  '/login' => 'sessions#new', :as => :login

  post '/login' => 'sessions#create', :as => :login

  get  '/chatroom' => 'chats#room', :as => :chat

  post '/new_message' => 'chats#new_message', :as => :new_message

end
