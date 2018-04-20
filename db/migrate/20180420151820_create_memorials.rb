class CreateMemorials < ActiveRecord::Migration[5.0]
  def change
    create_table :memorials do |t|
      t.string :name
      t.text :bio
      t.attachment :avatar

      t.timestamps
    end
  end
end
