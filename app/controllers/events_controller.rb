class EventsController < ApplicationController
  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'Event successfully added'
      redirect_to event_path(@event)
    else
      flash[:errors] = @event.errors.full_messages.join(', ')
      render :new
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:success] = 'Event successfully updated'
      redirect_to event_path(@event)
    else
      flash[:errors] = @event.errors.full_messages.join(', ')
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:location)
  end
end
