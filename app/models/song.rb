class Song < ActiveRecord::Base
  attr_accessible :song_title, :artist_name, :genre_name
  
validates :song_title, :artist_name, :genre_name, presence: true 
end