class AddGameStudioIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_studio_id, :integer
  end
end
