class DropTalksTable < ActiveRecord::Migration
  def up
    drop_table :talks
  end

  def down
    create_table :talks do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
