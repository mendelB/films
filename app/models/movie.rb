class Movie < ApplicationRecord
  belongs_to :director
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  accepts_nested_attributes_for :actors
  accepts_nested_attributes_for :director
end
