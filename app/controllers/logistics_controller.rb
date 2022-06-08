class LogisticsController < ApplicationController
  before_action :set_logistic, only: %i[ show edit update destroy discard ]

  # GET /logistics or /logistics.json
  def index
    @logistics = Logistic.all
  end

  # GET /logistics/1 or /logistics/1.json
  def show
  end

  # GET /logistics/new
  def new
    @logistic = Logistic.new
  end

  # GET /logistics/1/edit
  def edit
  end

  # POST /logistics or /logistics.json
  def create
    @logistic = Logistic.new(logistic_params)

    respond_to do |format|
      if @logistic.save
        format.html { redirect_to logistic_url(@logistic), notice: "Logistic was successfully created." }
        format.json { render :show, status: :created, location: @logistic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @logistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logistics/1 or /logistics/1.json
  def update
    respond_to do |format|
      
    @logistic.undiscard if params.dig(:restore)

  if
     @logistic.update(logistic_params)
    
        format.html { redirect_to logistic_url(@logistic), notice: "Entry was successfully updated." }
        format.json { render :show, status: :ok, location: @logistic }
    else
    
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @logistic.errors, status: :unprocessable_entity }
    end
    end
  end


  # DELETE /logistics/1 or /logistics/1.json
  def destroy
    if @logistic.discarded?
      @logistic.delete
    else
      @logistic.discard
    end
    
    respond_to do |format|
      format.html { redirect_to logistics_url, notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logistic
      @logistic = Logistic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def logistic_params
      params.require(:logistic).permit(:Inventory, :List, :product, :color, :size, :quantity, :location, :message, :restore)
    end
end
