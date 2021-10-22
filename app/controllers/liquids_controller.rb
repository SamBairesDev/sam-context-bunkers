class LiquidsController < ApplicationController
  before_action :set_liquid, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /liquids or /liquids.json
  def index
    @liquids = Liquid.all
  end

  # GET /liquids/1 or /liquids/1.json
  def show
  end

  # GET /liquids/new
  def new
    @liquid = Liquid.new
  end

  # GET /liquids/1/edit
  def edit
  end

  # POST /liquids or /liquids.json
  def create
    @liquid = Liquid.new(liquid_params)

    respond_to do |format|
      if @liquid.save
        format.html { redirect_to @liquid, notice: "Liquid was successfully created." }
        format.json { render :show, status: :created, location: @liquid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @liquid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liquids/1 or /liquids/1.json
  def update
    respond_to do |format|
      if @liquid.update(liquid_params)
        format.html { redirect_to @liquid, notice: "Liquid was successfully updated." }
        format.json { render :show, status: :ok, location: @liquid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @liquid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liquids/1 or /liquids/1.json
  def destroy
    @liquid.destroy
    respond_to do |format|
      format.html { redirect_to liquids_url, notice: "Liquid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liquid
      @liquid = Liquid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def liquid_params
      params.require(:liquid).permit(:name, :price, :strength, :flavor, :size, :brand)
    end
end
