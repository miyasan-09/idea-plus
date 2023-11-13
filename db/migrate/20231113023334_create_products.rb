class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :company,          null: false, foreign_key: true
      t.string :name,                 null: false
      t.string :title,                null: false
      t.text :description,            null: false

      t.timestamps
    end
  end
end
