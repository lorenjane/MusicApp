class SonginfoController < ApplicationController

def index
	
	@songs = Song.order(params[:sort])
	
	if(params[:id]).present?
		@song = Song.find(params[:id])
	end
end

def new
	@song = Song.new(params[:song])
	if(@song.save)
		redirect_to index_url
	end
end

def add #create
	@song = Song.new(params[:song])
	if(@song.save)
		redirect_to index_url
	end
end

def delete
	 song = Song.find(params[:id])
	 song.destroy
	 redirect_to index_url
end

def edit
	@song = Song.find(params[:id])
end

def update
	song = Song.find(params[:id])
	song.update_attributes(params[:song])
	if song.save
		redirect_to index_url
	end
end

def display_songdetails
	@song = Song.find(params[:id])
	redirect_to index_url
end

def display_artist
	@artist = Song.find_by_artist_name(params[:name])
	@song = Song.find(params[:id])
end

def display_genre
	@genre = Song.find_by_genre_name(params[:name])
	@song = Song.find(params[:id])
end

end
