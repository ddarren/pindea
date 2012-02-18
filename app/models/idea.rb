class Idea < ActiveRecord::Base
  has_many :good_points, :order => 'created_at DESC'
  has_many :bad_points, :order => 'created_at DESC'
  has_many :consideration_points, :order => 'created_at DESC'
  
  validates_presence_of :name
  validates_presence_of :description
end
