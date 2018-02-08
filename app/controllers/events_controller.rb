class EventsController < ApplicationController
  def new
    @event = current_user.events.build
  end

  def create
    # @event = Event.new(params[:event])
    # if @event.save
    #   redirect_to @event
    # else
    # render new
    # end
    @event = current_user.events.new(event_params)
    byebug
    @event.save
  end

  def index
    @events = Event.all
  end

  def show
  end

  def destroy
  end



  private

  def event_params
    params.permit(:description, :date, :place, :user_id)
  end
end
