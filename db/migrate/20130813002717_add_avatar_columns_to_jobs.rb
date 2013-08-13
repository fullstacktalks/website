class AddAvatarColumnsToJobs < ActiveRecord::Migration
  def self.up
    add_attachment :jobs, :company_logo
  end

  def self.down
    remove_attachment :jobs, :company_logo
  end
end
