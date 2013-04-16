class AddDefaultValueToPersonRole < ActiveRecord::Migration
  def up
    change_column :people, :role, :string, :default => "user"
  end

  def down
    change_column :people, :role, :string
  end
end
