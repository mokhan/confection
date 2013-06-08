class CategoriesController < ApplicationController
  def show
    @category = Category.find_by_slug(params[:id])
    @cakes = @category.cakes
  end
end
