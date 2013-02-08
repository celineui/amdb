class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :director_id

  validates_presence_of :director_id, :title

  belongs_to :director

  has_many :roles
end
