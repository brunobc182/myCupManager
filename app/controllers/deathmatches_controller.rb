class DeathmatchesController < ApplicationController
  before_action :set_deathmatch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /deathmatches
  # GET /deathmatches.json
  def index
    @deathmatches = Deathmatch.all
  end

  # GET /deathmatches/1
  # GET /deathmatches/1.json
  def show
  end

  # GET /deathmatches/new
  def new
    @deathmatch = Deathmatch.new
  end

  # GET /deathmatches/1/edit
  def edit
  end

  # POST /deathmatches
  # POST /deathmatches.json
  def create
    @deathmatch = Deathmatch.new(deathmatch_params)

    respond_to do |format|
      if @deathmatch.save
        format.html { redirect_to @deathmatch, notice: 'Deathmatch was successfully created.' }
        format.json { render :show, status: :created, location: @deathmatch }
      else
        format.html { render :new }
        format.json { render json: @deathmatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deathmatches/1
  # PATCH/PUT /deathmatches/1.json
  def update
    respond_to do |format|
      if @deathmatch.update(deathmatch_params)
        format.html { redirect_to @deathmatch, notice: 'Deathmatch was successfully updated.' }
        format.json { render :show, status: :ok, location: @deathmatch }
      else
        format.html { render :edit }
        format.json { render json: @deathmatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deathmatches/1
  # DELETE /deathmatches/1.json
  def destroy
    @deathmatch.destroy
    respond_to do |format|
      format.html { redirect_to deathmatches_url, notice: 'Deathmatch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deathmatch
      @deathmatch = Deathmatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deathmatch_params
      params.require(:deathmatch).permit(:name, :modality, :competitors, :type_competitors)
    end
end
