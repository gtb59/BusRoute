class SelectRoutesController < ApplicationController
  before_action :set_select_route, only: [:show, :edit, :update, :destroy]

  # GET /select_routes
  # GET /select_routes.json
  def index
    @select_routes = SelectRoute.all
  end

  # GET /select_routes/1
  # GET /select_routes/1.json
  def show
  end

  # GET /select_routes/new
  def new
    @select_route = SelectRoute.new
  end

  # GET /select_routes/1/edit
  def edit
  end

  # POST /select_routes
  # POST /select_routes.json
  def create
    @select_route = SelectRoute.new(select_route_params)

    respond_to do |format|
      if @select_route.save
        format.html { redirect_to @select_route, notice: 'Select route was successfully created.' }
        format.json { render action: 'show', status: :created, location: @select_route }
      else
        format.html { render action: 'new' }
        format.json { render json: @select_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /select_routes/1
  # PATCH/PUT /select_routes/1.json
  def update
    respond_to do |format|
      if @select_route.update(select_route_params)
        format.html { redirect_to @select_route, notice: 'Select route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @select_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /select_routes/1
  # DELETE /select_routes/1.json
  def destroy
    @select_route.destroy
    respond_to do |format|
      format.html { redirect_to select_routes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_select_route
      @select_route = SelectRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def select_route_params
      params.require(:select_route).permit(:select_route_id, :start_time, :destination, :travel_date, :arrival_time)
    end
end
