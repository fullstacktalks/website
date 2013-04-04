class AddCompanyAndPositionToPerson < ActiveRecord::Migration
  def change
    add_column :people, :company, :string
    add_column :people, :position, :string
  end
end
