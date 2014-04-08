class AddCompanyToGlass < ActiveRecord::Migration
  def change
    add_column :glasses, :company, :string
  end
end
