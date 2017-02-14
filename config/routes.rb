Rails.application.routes.draw do
  
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant # render the form to create the restaurant

  # post 'restaurants', to: 'restaurants#create' # create the restaurant on the DB -> when the form is submited

  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant # render the form to edit the restaurant

  # patch 'restaurants/:id', to: 'restaurants#update' # edit the restaurant on the DB -> when the form is submited

  # get 'restaurants', to: 'restaurants#index' # list restaurants

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant # show restaurants with a new name for the link

  # delete 'restaurants/:id', to: 'restaurants#destroy' 

  # all of the previous routes are automacally generated by the next line 
  resources :restaurants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
