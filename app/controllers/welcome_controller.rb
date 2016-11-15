class WelcomeController < ApplicationController
  def index
  end

  def show
  	@empanadas = Empanada.all
  end
end
