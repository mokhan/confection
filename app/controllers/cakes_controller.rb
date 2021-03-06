class CakesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @cakes = Cake.limit(12).order(:updated_at).all(include: [:user])
  end

  def n_plus_one
    @cakes = Cake.all(include: :category)
    render :index
  end

  def show
    @cake = Cake.find(params[:id])
  end

  def new
    @cake = Cake.new
    @categories = Category.all
  end

  def edit
    @cake = current_user.cakes.find(params[:id])
    @categories = Category.all
  end

  def create
    @cake = current_user.cakes.create(params[:cake])
    if @cake.save
      redirect_to @cake, notice: 'Cake was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @cake = current_user.cakes.find(params[:id])
    if @cake.update_attributes(params[:cake])
      redirect_to @cake, notice: 'Cake was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @cake = current_user.cakes.find(params[:id])
    @cake.destroy
    redirect_to cakes_url
  end
end
