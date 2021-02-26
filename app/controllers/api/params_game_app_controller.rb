class Api::ParamsGameAppController < ApplicationController

  def display_name
    @name_to_render = params["your_name"].upcase
    if @name_to_render[0] == "A"
      @message_to_render = "starts with A"   
    end
    
    render "params_name_view.json.jb"
  end

  def display_guess
    @instructions = "guess a number from 0 to 100. your guess goes into the 'guess' QUERY STRING param in your browser."
    @guess_to_render = params[:guess].to_i
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

  def display_guess_url_segment
    @instructions = "guess a number from 0 to 100. your guess goes into the 'guess' URL SEGMENT param in your browser."
    @guess_to_render = params[:guess_url_segment].to_i
    if @guess_to_render == 36
      @hint = "NICE JOB!!!!!!!!!!!!"
    elsif @guess_to_render > 36 && @guess_to_render <= 100
      @hint = "TOO HIGH!"
    elsif @guess_to_render < 36 && @guess_to_render >= 0
      @hint = "TOO LOW!"
    else
      @hint = "your guess needs to be between 0 and 100."
    end
    
    render "guessing_game_view.json.jb"
  end

  def validate_credentials
    if params[:user] == "hugh" && params[:password] == "swordfish"
      @message = "valid credentials."
    else
      @message = "invalid credentials."
    end
    render "validate_credentials.json.jb"
  end

end
