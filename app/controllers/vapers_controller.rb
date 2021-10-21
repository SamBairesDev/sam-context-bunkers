class VapersController < ApplicationController
  before_action :set_vaper, only: %i[ show edit update destroy ]

  # GET /vapers or /vapers.json
  def index
    @vapers = Vaper.all
  end

  # GET /vapers/1 or /vapers/1.json
  def show
  end

  # GET /vapers/new
  def new
    @vaper = Vaper.new
  end

  # GET /vapers/1/edit
  def edit
  end

  # POST /vapers or /vapers.json
  def create
    @vaper = Vaper.new(vaper_params)

    respond_to do |format|
      if @vaper.save
        format.html { redirect_to @vaper, notice: "Vaper was successfully created." }
        format.json { render :show, status: :created, location: @vaper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vapers/1 or /vapers/1.json
  def update
    respond_to do |format|
      if @vaper.update(vaper_params)
        format.html { redirect_to @vaper, notice: "Vaper was successfully updated." }
        format.json { render :show, status: :ok, location: @vaper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vapers/1 or /vapers/1.json
  def destroy
    @vaper.destroy
    respond_to do |format|
      format.html { redirect_to vapers_url, notice: "Vaper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaper
      @vaper = Vaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaper_params
      params.require(:vaper).permit(:name, :price, :brand, :waranty_time)
    end
end
