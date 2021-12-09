class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10)
  end

  def score
    @answer = params[:answer]
    @letters = params[:letters]
    if params[:answer].upcase.split("") - params[:letters].upcase.split != []
      @output = "Sorry but #{@answer} can not be used."
    end
  end
end
