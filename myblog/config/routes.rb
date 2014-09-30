Myblog::Application.routes.draw do
  root to: "top#index"

  resources :articles do
  end
end
