class DropEventsPeopleTable < ActiveRecord::Migration
  def up
    drop_table :events_people
  end

  def down
    create_table :events_people, :id => false do |t|
      t.references :event
      t.references :person
    end
    add_index :events_people, [:person_id, :event_id]
    add_index :events_people, [:event_id, :person_id]
  end
end
