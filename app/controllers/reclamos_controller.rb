class ReclamosController < ApplicationController
  def index
    @reclamos = Reclamo.search(params[:search], params[:page]).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reclamos }
    end
  end

  def show
    @reclamo = Reclamo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reclamo }
    end
  end

  def new
    @reclamo = Reclamo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reclamo }
    end
  end

  def edit
    @reclamo = Reclamo.find(params[:id])
  end

  def create
    @reclamo = Reclamo.new(params[:reclamo])

    respond_to do |format|
      if @reclamo.save
        format.html { redirect_to @reclamo, notice: 'Reclamo was successfully created.' }
        format.json { render json: @reclamo, status: :created, location: @reclamo }
      else
        format.html { render action: "new" }
        format.json { render json: @reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @reclamo = Reclamo.find(params[:id])

    respond_to do |format|
      if @reclamo.update_attributes(params[:reclamo])
        format.html { redirect_to @reclamo, notice: 'Reclamo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reclamo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reclamo = Reclamo.find(params[:id])
    @reclamo.destroy

    respond_to do |format|
      format.html { redirect_to reclamos_url }
      format.json { head :no_content }
    end
  end
end
