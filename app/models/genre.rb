# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_id    :integer
#

class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :songs
  has_many :artists, :through => :songs
end
