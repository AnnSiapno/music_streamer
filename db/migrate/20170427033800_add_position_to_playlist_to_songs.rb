class AddPositionToPlaylistToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :playlist_to_songs, :position, :integer
  end
end
