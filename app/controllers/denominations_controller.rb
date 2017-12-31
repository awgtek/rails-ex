class DenominationsController < ApplicationController
  before_action :set_denomination, only: [:show, :edit, :update, :destroy]

  # GET /denominations
  # GET /denominations.json
  def index
    @denominations = Denomination.all
  end

  # GET /denominations/1
  # GET /denominations/1.json
  def show
  end

  # GET /denominations/new
  def new
    @denomination = Denomination.new
  end

  # GET /denominations/1/edit
  def edit
  end

  # POST /denominations
  # POST /denominations.json
  def create
    @denomination = Denomination.new(denomination_params)

    respond_to do |format|
      if @denomination.save
        format.html { redirect_to @denomination, notice: 'Denomination was successfully created.' }
        format.json { render :show, status: :created, location: @denomination }
      else
        format.html { render :new }
        format.json { render json: @denomination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denominations/1
  # PATCH/PUT /denominations/1.json
  def update
    respond_to do |format|
      if @denomination.update(denomination_params)
        format.html { redirect_to @denomination, notice: 'Denomination was successfully updated.' }
        format.json { render :show, status: :ok, location: @denomination }
      else
        format.html { render :edit }
        format.json { render json: @denomination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denominations/1
  # DELETE /denominations/1.json
  def destroy
    @denomination.destroy
    respond_to do |format|
      format.html { redirect_to denominations_url, notice: 'Denomination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denomination
      @denomination = Denomination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def denomination_params
      params.require(:denomination).permit(:name)
    end
end
