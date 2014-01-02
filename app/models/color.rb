class Color < ActiveRecord::Base
  validates_presence_of :name
  has_many :cars,
    inverse_of: :color
end
