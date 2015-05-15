class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
	t.string :song_title
	t.string :genre_name
	t.string :artist_name
	t.boolean :favorite
    t.timestamps null: false
    end
  end
end
