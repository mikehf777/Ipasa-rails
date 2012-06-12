Ipasa::Application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users

  resources :rents

  resources :lease_structures

>>>>>>> d019a217396b6d0e33ebd74df90eb48b12ecd059
  root :to => "pages#home"
  match 'contacto', :to => "pages#contacto"
  match "nueva_factura", :to => "invoices#new"
  match "nueva_localidad",:to => "localities#new"
  match "subir_documento", :to => "documents#new"
  match "nuevo_inmueble", :to => "leases#new"
  match "nueva_foto", :to => "photos#new"
  match "nuevo_servicio", :to => "services#new"
  match "nueva_renta", :to => "rents#new"
  match "nueva_estructura", :to => "structures#new"
  match "nuevo_recargo", :to => "surcharges#new"
  match "nuevo_impuesto", :to => "duties#new"
  match "propiedades" , :to => "properties#tab"
  match "perfiles", :to => "profiles#tab"

  resources :profiles

  resources :types

  resources :rents

  resources :lease_structures       
  
  resources :rent_documents

  resources :invoices

  resources :surcharges

  resources :documents

  resources :structures

  resources :duties

  resources :property_services

  resources :services

  resources :videos

  resources :leases

  resources :localities

  resources :properties do
    member do
    get 'properties'

  end
end
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
