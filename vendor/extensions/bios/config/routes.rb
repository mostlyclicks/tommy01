Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :bios do
    resources :bios, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :bios, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :bios, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
