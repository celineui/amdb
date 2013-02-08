class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :director_id

  # belongs to director

  # has many roles
end
