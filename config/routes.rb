Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:new, :create, :update, :edit, :show]
  # SAME AS resources :students, except: [:destroy, :index]
  resources :school_classes, except: [:destroy, :index]
end
