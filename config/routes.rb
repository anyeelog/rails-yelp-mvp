Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [:new, :create]
# 	# we put it inside because we don't need to have the restaurant id inside the url
#   end
#   resources :reviews, only: [:destroy]
# 	# we put it outside because we need to have the restaurant id inside the url
# end
