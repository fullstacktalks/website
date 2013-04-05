class CreatePeopleEventsTable < ActiveRecord::Migration
  def self.up
    create_table :events_people, :id => false do |t|
      t.references :event
      t.references :person
    end
    add_index :events_people, [:person_id, :event_id]
    add_index :events_people, [:event_id, :person_id]
  end

  def self.down
    drop_table :events_people
  end
end