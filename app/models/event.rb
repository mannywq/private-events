class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'creator_id', class_name: 'User'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :attendee

  scope :upcoming, -> { where('event_date > ?', Time.zone.now) }
  scope :past, -> { where('event_date < ?', Time.zone.now) }
end
