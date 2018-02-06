class AddColumnsToNewsAndTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :category, :string
    add_column :teams, :bar_id, :integer
  end
end
