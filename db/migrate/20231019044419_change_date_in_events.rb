class ChangeDateInEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :event_date, :datetime
    remove_column :events, :date
  end
end
