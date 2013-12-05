QAndA::Application.routes.draw do

  devise_scope :user do
    get "users/profile", :to => "devise/users#show"
  end

  devise_for :users

  resources :questions

  root :to => 'questions#index'

end
