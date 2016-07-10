# Peter Jang [9:41 AM]  
# Exercise: 
# • Create a brand new app called params-game-app where you can use query parameters to tell the app your name, and the app will show your name on the screen in all caps.

# • Next make it so that if your name begins with the letter “a”, there’s a message that appears saying, “Hey, your name starts with the first letter of the alphabet!”

# • Create the guess-a-number game using query parameters. (Reminder: This is the game where the app chooses a number between 1 and 100, and the user has to guess what it is. It also tells the user after each guess whether to guess higher or lower.) One caveat: Instead of having the program choosing a random number in advance, just choose a specific number, such as 36. One other gotcha: All params are initially treated as strings, so you’ll have to do some conversion to integer to work around that.

# Bonus: Read more about how Rails creates parameters from urls here: http://codefol.io/posts/How-Does-Rack-Parse-Query-Params-With-parse-nested-query Try to make some more complex get paramters!

# Bonus: Create a new route, action, and view, that counts + 1 every time a button is clicked.


Rails.application.routes.draw do
  get '/name_query' => 'params#name_uppercase'
  get '/number_game' => 'params#number_guess'
  get '/array_test' => 'params#array_test'
  get '/url_segment_params/:my_message' => 'params#url_params'
  get '/number_game_seg_param/:user_guess' => 'params#number_guess_segment_param'
  # These are connected:
  get '/form_show' => 'params#form_params_show'
  post '/form_result' => 'params#forms_params_result'
  # get vs. post

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
