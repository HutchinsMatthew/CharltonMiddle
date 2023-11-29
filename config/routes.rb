Rails.application.routes.draw do

  get 'rooms/index'

  resources :teachers do
    collection do
        get 'add_students_to_teachers'
    end
  end
  resources :students

  resources :events
  resources :clubs
  

  resources :rooms do
    resources :messages
  end

  get 'site/index'
  get 'site/show_users'
  get 'site/one_to_many'
  get 'site/many_to_many'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "site#index"

end
