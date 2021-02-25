class Api::ParamsGameAppController < ApplicationController

  def display_name
    @name_to_render = params["your_name"].upcase
    render "params_name_view.json.jb"
  end

end
