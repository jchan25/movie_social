class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.user_ID = params[:user_ID]
    @event.name = params[:name]
    @event.theater_address = params[:theater_address]
    @event.movie_id = params[:movie_id]
    @event.datetime = params[:datetime]

    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.user_ID = params[:user_ID]
    @event.name = params[:name]
    @event.theater_address = params[:theater_address]
    @event.movie_id = params[:movie_id]
    @event.datetime = params[:datetime]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end
end
