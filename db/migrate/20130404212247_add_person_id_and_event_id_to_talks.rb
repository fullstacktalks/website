class AddPersonIdAndEventIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :person_id, :integer
    add_column :talks, :event_id, :integer
  end
end
