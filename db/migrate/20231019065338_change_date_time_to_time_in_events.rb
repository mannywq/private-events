class ChangeDateTimeToTimeInEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :event_date
    add_column :events, :date, :datetime
  end
end
