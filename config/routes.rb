Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index"})
  # Routes for the Event_attendee resource:
  # CREATE
  get('/event_attendees/new', { :controller => 'event_attendees', :action => 'new' })
  get('/create_event_attendee', { :controller => 'event_attendees', :action => 'create' })

  # READ
  get('/event_attendees', { :controller => 'event_attendees', :action => 'index' })
  get('/event_attendees/:id', { :controller => 'event_attendees', :action => 'show' })

  # UPDATE
  get('/event_attendees/:id/edit', { :controller => 'event_attendees', :action => 'edit' })
  get('/update_event_attendee/:id', { :controller => 'event_attendees', :action => 'update' })

  # DELETE
  get('/delete_event_attendee/:id', { :controller => 'event_attendees', :action => 'destroy' })
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Genre resource:
  # CREATE
  get('/genres/new', { :controller => 'genres', :action => 'new' })
  get('/create_genre', { :controller => 'genres', :action => 'create' })

  # READ
  get('/genres', { :controller => 'genres', :action => 'index' })
  get('/genres/:id', { :controller => 'genres', :action => 'show' })

  # UPDATE
  get('/genres/:id/edit', { :controller => 'genres', :action => 'edit' })
  get('/update_genre/:id', { :controller => 'genres', :action => 'update' })

  # DELETE
  get('/delete_genre/:id', { :controller => 'genres', :action => 'destroy' })
  #------------------------------

  # Routes for the User_favorited_genre resource:
  # CREATE
  get('/user_favorited_genres/new', { :controller => 'user_favorited_genres', :action => 'new' })
  get('/create_user_favorited_genre', { :controller => 'user_favorited_genres', :action => 'create' })

  # READ
  get('/user_favorited_genres', { :controller => 'user_favorited_genres', :action => 'index' })
  get('/user_favorited_genres/:id', { :controller => 'user_favorited_genres', :action => 'show' })

  # UPDATE
  get('/user_favorited_genres/:id/edit', { :controller => 'user_favorited_genres', :action => 'edit' })
  get('/update_user_favorited_genre/:id', { :controller => 'user_favorited_genres', :action => 'update' })

  # DELETE
  get('/delete_user_favorited_genre/:id', { :controller => 'user_favorited_genres', :action => 'destroy' })
  #------------------------------

  # Routes for the User_favorited_movie resource:
  # CREATE
  get('/user_favorited_movies/new', { :controller => 'user_favorited_movies', :action => 'new' })
  get('/create_user_favorited_movie', { :controller => 'user_favorited_movies', :action => 'create' })

  # READ
  get('/user_favorited_movies', { :controller => 'user_favorited_movies', :action => 'index' })
  get('/user_favorited_movies/:id', { :controller => 'user_favorited_movies', :action => 'show' })

  # UPDATE
  get('/user_favorited_movies/:id/edit', { :controller => 'user_favorited_movies', :action => 'edit' })
  get('/update_user_favorited_movie/:id', { :controller => 'user_favorited_movies', :action => 'update' })

  # DELETE
  get('/delete_user_favorited_movie/:id', { :controller => 'user_favorited_movies', :action => 'destroy' })
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get('/movies/new', { :controller => 'movies', :action => 'new' })
  get('/create_movie', { :controller => 'movies', :action => 'create' })

  # READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  # UPDATE
  get('/movies/:id/edit', { :controller => 'movies', :action => 'edit' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update' })

  # DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })
  #------------------------------

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
