class CakesController < ApplicationController
  # GET /cakes
  # GET /cakes.json
  def index
    @cakes = Cake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cakes }
    end
  end

  # GET /cakes/1
  # GET /cakes/1.json
  def show
    @cake = Cake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cake }
    end
  end

  # GET /cakes/new
  # GET /cakes/new.json
  def new
    @cake = Cake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cake }
    end
  end

  # GET /cakes/1/edit
  def edit
    @cake = Cake.find(params[:id])
  end

  # POST /cakes
  # POST /cakes.json
  def create
    @cake = Cake.new(params[:cake])

    respond_to do |format|
      if @cake.save
        format.html { redirect_to @cake, notice: 'Cake was successfully created.' }
        format.json { render json: @cake, status: :created, location: @cake }
      else
        format.html { render action: "new" }
        format.json { render json: @cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cakes/1
  # PUT /cakes/1.json
  def update
    @cake = Cake.find(params[:id])

    respond_to do |format|
      if @cake.update_attributes(params[:cake])
        format.html { redirect_to @cake, notice: 'Cake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cakes/1
  # DELETE /cakes/1.json
  def destroy
    @cake = Cake.find(params[:id])
    @cake.destroy

    respond_to do |format|
      format.html { redirect_to cakes_url }
      format.json { head :no_content }
    end
  end
end
