class AddParagraphsToNews < ActiveRecord::Migration[5.0]
  def change
    rename_column :news, :content, :paragraph_one

    add_column :news, :paragraph_two, :text
    add_column :news, :paragraph_three, :text
  end
end
