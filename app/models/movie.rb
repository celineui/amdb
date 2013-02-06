class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :director_id

  def director
    return Director.find_by_id(self.director_id)
  end
end
