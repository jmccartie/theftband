class Show < ActiveRecord::Base
  validates_presence_of :date, :location, :venue
end
