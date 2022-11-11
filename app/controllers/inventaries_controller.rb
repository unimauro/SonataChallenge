class InventariesController < ApplicationController
  before_action :set_inventary, only: %i[ show edit update destroy ]

  # GET /inventaries or /inventaries.json
  def index
    @inventaries = Inventary.all
  end

  # GET /inventaries/1 or /inventaries/1.json
  def show
  end

  # GET /inventaries/new
  def new
    @inventary = Inventary.new
  end

  # GET /inventaries/1/edit
  def edit
  end

  # POST /inventaries or /inventaries.json
  def create
    @inventary = Inventary.new(inventary_params)

    respond_to do |format|
      if @inventary.save
        format.html { redirect_to inventary_url(@inventary), notice: "Inventary was successfully created." }
        format.json { render :show, status: :created, location: @inventary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventaries/1 or /inventaries/1.json
  def update
    respond_to do |format|
      if @inventary.update(inventary_params)
        format.html { redirect_to inventary_url(@inventary), notice: "Inventary was successfully updated." }
        format.json { render :show, status: :ok, location: @inventary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventaries/1 or /inventaries/1.json
  def destroy
    @inventary.destroy

    respond_to do |format|
      format.html { redirect_to inventaries_url, notice: "Inventary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventary
      @inventary = Inventary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventary_params
      params.require(:inventary).permit(:name, :car_id, :dealer_id)
    end
end
