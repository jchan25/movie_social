class EventAttendeesController < ApplicationController
  def index
    @event_attendees = EventAttendee.all
  end

  def show
    @event_attendee = EventAttendee.find(params[:id])
  end

  def new
    @event_attendee = EventAttendee.new
  end

  def create
    @event_attendee = EventAttendee.new
    @event_attendee.event_id = params[:event_id]
    @event_attendee.user_id = params[:user_id]
    @event_attendee.status = params[:status]

    if @event_attendee.save
      redirect_to "/event_attendees", :notice => "Event attendee created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event_attendee = EventAttendee.find(params[:id])
  end

  def update
    @event_attendee = EventAttendee.find(params[:id])

    @event_attendee.event_id = params[:event_id]
    @event_attendee.user_id = params[:user_id]
    @event_attendee.status = params[:status]

    if @event_attendee.save
      redirect_to "/event_attendees", :notice => "Event attendee updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event_attendee = EventAttendee.find(params[:id])

    @event_attendee.destroy

    redirect_to "/event_attendees", :notice => "Event attendee deleted."
  end
end
