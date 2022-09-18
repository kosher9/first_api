Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # namespace :v1 do
  #   resources :people, only: [:index, :show] do
  #     resources :pets, only: [:index, :show]
  #   end
  # end

  get 'owners', to: 'v1/people#index'
  get 'owners/:id', to: 'v1/people#show'

  get 'owners_with_pets', to: 'v1/people#full_info'
  get 'owners_with_pets/:id', to: 'v1/people#full_info_owner'

  get 'pets', to: 'v1/pets#index'
  get 'pets/:id', to: 'v1/pets#show'
end
