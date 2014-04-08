class CreateGlasses < ActiveRecord::Migration
  def change
    create_table :glasses do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :factor

      t.timestamps
    end
  end
end
