# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  genre_id   :integer
#

class Song < ActiveRecord::Base
  attr_accessible :name, :artist, :genre

  belongs_to :artist
  belongs_to :genre
end
