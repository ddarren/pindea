class Idea < ActiveRecord::Base
  has_many :good_points
  has_many :bad_points
  has_many :consideration_points
end
