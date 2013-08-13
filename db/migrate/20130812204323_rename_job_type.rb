class RenameJobType < ActiveRecord::Migration
  def self.up
    rename_column :jobs, :type, :position_type
  end

  def self.down
  # rename back if you need or do something else or do nothing
  end
end
