class EventsController < ApplicationController
  def new
  end

  def create
    # @event = Event.new(params[:event])
    # if @event.save
    #   redirect_to @event
    # else
    # render new
    # end
    @event = current_user.events.new(event_params)
    @event.save
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
