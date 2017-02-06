class AddAvatarColumntoBar < ActiveRecord::Migration[5.0]
  def up
    add_attachment :bars, :avatar
  end

  def down
    remove_attachment :bars, :avatar
  end
end
