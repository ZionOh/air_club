Rails.application.routes.draw do
  devise_for :users do
  delete '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :videos
  root 'main#index'
  get '/abouts' =>"main#about"
  get '/contacts' =>"main#contacts"
  
  get '/yboard' =>"board#yboard"
  post '/ywrite' =>"board#ywrite"
  get'/ysingle/:id' =>"board#ysingle",  as: "ysingle"
  get '/board/ydel/:id' =>"board#ydel", as: "ydel"
  get '/board/yedit/:id' =>"board#yedit", as: "yedit"
  post '/yupdate' =>"board#yupdate"

  get '/oboard' =>"board#oboard"
  post '/owrite' =>"board#owrite"
  get'/osingle/:id' =>"board#osingle",  as: "osingle"
  get '/board/odel/:id' =>"board#odel", as: "odel"
  get '/board/oedit/:id' =>"board#oedit", as: "oedit"
  post '/oupdate' =>"board#oupdate"


  get '/announce' =>"board#announce"
  post  '/annwrt' =>"board#annwrt"


  get '/board_total' =>"board#total"
  post '/comment' =>"board#comment"
  
  get'/btest' =>"board#btest"
  get'/profile/:id' =>"board#profile", as: "profile"
  
  get '/ggallery' =>"gallery#games"
  get '/gaup' =>"gallery#gaup"
  post '/gcre' =>"gallery#gcre"
  get '/egallery' =>"gallery#event"
  get '/evup' =>"gallery#evup"
  post '/ecre' =>"gallery#ecre"
  get '/agallery' =>"gallery#aprivate"
  get '/prup' =>"gallery#prup"
  post '/acre' =>"gallery#acre"
  get '/tgallery' =>"gallery#total"
  
  
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
