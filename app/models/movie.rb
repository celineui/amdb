class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :director_id

  validates_presence_of :director_id, :title

  belongs_to :director

  has_many :actors, :through => :roles

  has_many :roles

  has_many :votes

  has_many :users, :through => :votes



  # def actors
  #   actors_array = []
  #   self.roles.each do |role|
  #     actors_array << role.actor
  #   end
  #   return actors_array
  # end

end
