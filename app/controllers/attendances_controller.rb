class AttendancesController < ApplicationController
  def index
    @attendances = Event.attendees.all
  end

  def create
    # @user = current_user

    puts "Event id should be #{params}"
    @event = Event.find(params[:attendance][:event_id])

    @attendance = current_user.attendances.build(attendee_id: current_user,
                                                 event_id: @event.id)

    if @attendance.save

      redirect_to user_path(current_user)

    else

      flash[:alert] = @attendance.errors.full_messages.to_sentence

    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:event_id)
  end
end
