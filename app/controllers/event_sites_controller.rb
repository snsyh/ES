class EventSitesController < ApplicationController
  before_action :set_event_site, only: [:show, :edit, :update, :destroy]

  # GET /event_sites
  # GET /event_sites.json
  def index
    @event_sites = EventSite.all
  end

  # GET /event_sites/1
  # GET /event_sites/1.json
  def show
  end

  # GET /event_sites/new
  def new
    @event_site = EventSite.new
  end

  # GET /event_sites/1/edit
  def edit
  end

  # POST /event_sites
  # POST /event_sites.json
  def create
    @event_site = EventSite.new(event_site_params)

    respond_to do |format|
      if @event_site.save
        format.html { redirect_to @event_site, notice: 'Event site was successfully created.' }
        format.json { render :show, status: :created, location: @event_site }
      else
        format.html { render :new }
        format.json { render json: @event_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sites/1
  # PATCH/PUT /event_sites/1.json
  def update
    respond_to do |format|
      if @event_site.update(event_site_params)
        format.html { redirect_to @event_site, notice: 'Event site was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_site }
      else
        format.html { render :edit }
        format.json { render json: @event_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sites/1
  # DELETE /event_sites/1.json
  def destroy
    @event_site.destroy
    respond_to do |format|
      format.html { redirect_to event_sites_url, notice: 'Event site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_site
      @event_site = EventSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_site_params
      params.require(:event_site).permit(:event_site_name, :prefecture_type_id, :near_station, :access_route, :host_comment, :carpark_type_id, :capacity, :degrees_of_latitude, :degrees_of_longitude)
    end
end
