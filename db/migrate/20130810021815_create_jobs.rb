class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.text :description
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
