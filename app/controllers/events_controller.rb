class EventsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @band = Band.find(params[:band_id])
    @events = @band.events.all
  end

  # GET /events/1
  # # GET /events/1.json
  # def show
  #   @band = Band.find(params[:id])
  # end

  # # GET /events/new
  # def new
  #   @event = Event.new
  # end

  # # GET /events/1/edit
  # def edit
  # end

  # POST /events
  # POST /events.json
  def create
    @band = Band.find(params[:band_id])
    @event = @band.events.create(params[:event].permit(:title, :description, :dateTime))

    respond_to do |format|
      if @event.save
        format.html { redirect_to @band, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @band }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  # def update
  #   respond_to do |format|
  #     if @event.update(event_params)
  #       format.html { redirect_to @event, notice: 'Event was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @event.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @band = Band.find(params[:band_id])
    @event = @band.events.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to @band }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_event
    #   @event = @band.event.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :dateTime)
    end
end
