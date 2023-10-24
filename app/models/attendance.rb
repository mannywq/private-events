class Attendance < ApplicationRecord
  validates :attendee_id,
            uniqueness: { scope: :event_id,
                          message: 'You are already attending this event' }
  belongs_to :event
  belongs_to :attendee, class_name: 'User'
end
