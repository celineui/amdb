class Role < ActiveRecord::Base
  attr_accessible :actor_id, :character_name, :movie_id

  validates_presence_of :actor_id, :movie_id, :character_name

  belongs_to :movie

  belongs_to :actor
end
