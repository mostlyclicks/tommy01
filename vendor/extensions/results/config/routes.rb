Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :results do
    resources :results, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :results, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :results, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
