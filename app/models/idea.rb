class Idea < ActiveRecord::Base
  has_many :good_points
  has_many :bad_points
  has_many :consideration_points
  
  validates_presence_of :name
  validates_presence_of :description
end
