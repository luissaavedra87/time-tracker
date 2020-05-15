class ClocksController < ApplicationController
  before_action :set_clock, only: [:show, :edit, :update, :destroy]

  # GET /clocks
  # GET /clocks.json
  def index
    @clocks = Clock.all.order_by_most_recent.where(user_id: current_user)
  end

  # GET /clocks/1
  # GET /clocks/1.json
  def show
  end

  # GET /clocks/new
  def new
    @clock = Clock.new
  end

  # GET /clocks/1/edit
  def edit
  end

  # POST /clocks
  # POST /clocks.json
  def create
    @clock = Clock.new(clock_params)
    @clock.user = current_user

    respond_to do |format|
      if @clock.save
        format.html { redirect_to clocks_path, notice: 'Clock was successfully created.' }
        format.json { render :show, status: :created, location: @clock }
      else
        format.html { render :new }
        format.json { render json: @clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clocks/1
  # PATCH/PUT /clocks/1.json
  def update
    respond_to do |format|
      if @clock.update(clock_params)
        format.html { redirect_to clocks_path, notice: 'Clock was successfully updated.' }
        format.json { render :show, status: :ok, location: @clock }
      else
        format.html { render :edit }
        format.json { render json: @clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clocks/1
  # DELETE /clocks/1.json
  def destroy
    @clock.destroy
    respond_to do |format|
      format.html { redirect_to clocks_url, notice: 'Clock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ehour
    @ext_hour = Clock.all.order_by_most_recent.where(user_id: current_user, group_id: params[nil])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock
      @clock = Clock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clock_params
      params.require(:clock).permit(:group_id, :name, :hour)
    end
end
