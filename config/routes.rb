Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    # employer
    get "/employers" => "employers#index"
    post "/employers" => "employers#create"
    get "/employers/:id" => "employers#show"
    patch "/employers/:id" => "employers#update"
    delete "/employers/:id" => "employers#destroy"

    #dancer 
    get "/dancers" => "dancers#index"
    post "/dancers" => "dancers#create"
    get "/dancers/:id" => "dancers#show"
  end

end
