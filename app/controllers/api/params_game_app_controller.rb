class Api::ParamsGameAppController < ApplicationController

  def display_name
    @name_to_render = params["your_name"].upcase
    if @name_to_render[0] == "A"
      @message_to_render = "starts with A"   
    end
    
    render "params_name_view.json.jb"
  end

end
