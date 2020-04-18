Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope :admin, controller: :admin do
    get "/", action: :index, as: :admin
    get :forms
    get :"basic-table"
    get :ui
    get :signin
    get :signup
  end

end
