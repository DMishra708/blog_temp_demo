class RecepiesController < ApplicationController
  before_action :set_recepy, only: [:show, :edit, :update, :destroy]

  # GET /recepies
  # GET /recepies.json
  def index
    @recepies = Recepie.all
  end

  # GET /recepies/1
  # GET /recepies/1.json
  def show
  end

  # GET /recepies/new
  def new
    @recepy = Recepie.new
  end

  # GET /recepies/1/edit
  def edit
  end

  # POST /recepies
  # POST /recepies.json
  def create
    @recepy = Recepie.new(recepy_params)

    respond_to do |format|
      if @recepy.save
        format.html { redirect_to @recepy, notice: 'Recepie was successfully created.' }
        format.json { render :show, status: :created, location: @recepy }
      else
        format.html { render :new }
        format.json { render json: @recepy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepies/1
  # PATCH/PUT /recepies/1.json
  def update
    respond_to do |format|
      if @recepy.update(recepy_params)
        format.html { redirect_to @recepy, notice: 'Recepie was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepy }
      else
        format.html { render :edit }
        format.json { render json: @recepy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepies/1
  # DELETE /recepies/1.json
  def destroy
    @recepy.destroy
    respond_to do |format|
      format.html { redirect_to recepies_url, notice: 'Recepie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepy
      @recepy = Recepie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepy_params
      params[:recepy]
    end
end
