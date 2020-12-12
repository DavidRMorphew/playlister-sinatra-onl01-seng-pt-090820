class Artist < ActiveRecord::Base
    include Helpers::InstanceHelpers
    extend Helpers::ClassHelpers
    has_many :songs
    has_many :genres, through: :songs
end