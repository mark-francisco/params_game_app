Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name" => "params_game_app#display_name"

    get "/guessing_game" => "params_game_app#display_guess"

    # wildcard KEY gets defined in route.
    # wildcard VALUE gets defined in browser.
    get "/guessing_game_url_segments/:guess_url_segment" => "params_game_app#display_guess_url_segment"
  end
end
