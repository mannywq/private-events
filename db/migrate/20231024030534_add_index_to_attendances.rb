class AddIndexToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_index :attendances, %i[attendee_id event_id], unique: true
  end
end
