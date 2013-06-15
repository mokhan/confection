class CakesController < ApplicationController
  def index
    @cakes = Cake.all(include: :category)
  end
end
