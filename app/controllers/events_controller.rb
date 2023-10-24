class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @upcoming_events = Event.upcoming.all
    @past_events = Event.past.all
  end

  def show
    @user = current_user

    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.events.build(event_params)

    if @event.save

      redirect_to events_path

    else

      render :new, status: :unprocessable_entity

    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :event_date, :location)
  end
end
