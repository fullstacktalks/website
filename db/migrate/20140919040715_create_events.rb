class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :starts_at, null: false
      t.text :description
      t.string :url, null: false
      t.timestamps
    end
  end
end
