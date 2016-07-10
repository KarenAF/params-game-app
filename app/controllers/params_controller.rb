class ParamsController < ApplicationController
  def name_uppercase
    @name = params[:name]
    render 'name_query.html.erb'
  end

  def array_test
    @testing = p[]=a&p[]=b&p[]=c
    render 'array.html.erb'
  end

  def url_params
    @message = params["my_message"]
    render 'url.html.erb'
  end

  def number_guess_segment_param
    @secret_number = 25
    @user_guess = params[:user_guess].to_i
    if @user_guess == 25
      @message = "You've won! The number was #{@secret_number}."
    elsif @user_guess < @secret_number
      @message = "Guess higher"
    elsif @user_guess > @secret_number
      @message = "Guess lower"
    end
    render 'num_game_seg_param.html.erb'
  end

  def number_guess
    @secret_number = 25
    @user_guess = params[:guess].to_i
    if @user_guess == 25
      @message = "You've won! The number was #{@secret_number}."
    elsif @user_guess < @secret_number
      @message = "Guess higher"
    elsif @user_guess > @secret_number
      @message = "Guess lower"
    end
    render 'number_guessing_game.html.erb'
  end

  def form_params_show
    render 'form_show.html.erb'
  end
end
