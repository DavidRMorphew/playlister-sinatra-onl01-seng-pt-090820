class Genre < ActiveRecord::Base
    include Helpers::InstanceHelpers
    extend Helpers::ClassHelpers
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs
end