class CreateMerchandises < ActiveRecord::Migration[5.0]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.text :description
      t.attachment :avatar
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
