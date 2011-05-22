class Show < ActiveRecord::Base
  default_scope :order => 'date DESC'

  validates_presence_of :date, :location, :venue
end
