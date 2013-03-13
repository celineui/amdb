require 'cgi'

class Director < ActiveRecord::Base
  attr_accessible :dob, :name

  validates_presence_of :name

  has_many :movies

  def to_param
    "#{self.id}-#{CGI.escape(self.name)}"
  end
end
