class Api::ParamsGameAppController < ApplicationController

  def display_name
    @name_to_render = params["your_name"].upcase
    if @name_to_render[0] == "A"
      @message_to_render = "starts with A"   
    end
    
    render "params_name_view.json.jb"
  end

  def display_user_guess
    @instructions = "guess a number from 0 to 100. your guess goes into the 'guess' param in your browser."
    @guess_to_render = params["guess"].to_i
    if @guess_to_render == 36
      @hint = "Correct!"
    elsif @guess_to_render > 36 && @guess_to_render <= 100
      @hint = "Too high"
    elsif @guess_to_render < 36 && @guess_to_render >= 0
      @hint = "Too low"
    else
      @hint = "your guess needs to be between 0 and 100."
    end
    render "guessing_game_view.json.jb"
  end  

end
