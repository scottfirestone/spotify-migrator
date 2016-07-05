Rails.application.routes.draw do
  root to: "welcome#index"

  get "/auth/spotify",          as: :spotify_login
  get "/auth/spotify/callback", to: "sessions#create"
end
