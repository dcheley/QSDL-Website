class AddAvatarsToTeamsAndPosts < ActiveRecord::Migration[5.0]
  def change
    add_attachment :teams, :avatar
    add_attachment :posts, :avatar
  end
end
