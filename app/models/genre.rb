class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
   self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    names =[]
    artists_arr = self.artists
    artists_arr.map do |art|
      art.name
    end
  end
end
