class DropPeopleTable < ActiveRecord::Migration
  def up
    drop_table :people
  end

  def down
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
