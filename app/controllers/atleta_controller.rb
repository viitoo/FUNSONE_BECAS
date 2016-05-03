class AtletaController < ApplicationController
  # GET /atleta
  # GET /atleta.json
  before_filter :authenticate_user!
  def index
    @atleta = Atletum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atleta }
    end
  end

  # GET /atleta/1
  # GET /atleta/1.json
  def show
    @atletum = Atletum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @atletum }
    end
  end

  # GET /atleta/new
  # GET /atleta/new.json
  def new
    @atletum = Atletum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @atletum }
    end
  end

  # GET /atleta/1/edit
  def edit
    @atletum = Atletum.find(params[:id])
  end

  # POST /atleta
  # POST /atleta.json
  def create
    @atletum = Atletum.new(params[:atletum])

    respond_to do |format|
      if @atletum.save
        format.html { redirect_to @atletum, notice: 'Atletum was successfully created.' }
        format.json { render json: @atletum, status: :created, location: @atletum }
      else
        format.html { render action: "new" }
        format.json { render json: @atletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /atleta/1
  # PUT /atleta/1.json
  def update
    @atletum = Atletum.find(params[:id])

    respond_to do |format|
      if @atletum.update_attributes(params[:atletum])
        format.html { redirect_to @atletum, notice: 'Atletum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @atletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atleta/1
  # DELETE /atleta/1.json
  def destroy
    @atletum = Atletum.find(params[:id])
    @atletum.destroy

    respond_to do |format|
      format.html { redirect_to atleta_url }
      format.json { head :no_content }
    end
  end
end
