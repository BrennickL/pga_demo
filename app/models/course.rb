class Course < ApplicationRecord
  has_many :courses_holes
  has_many :holes, through: :courses_holes

  validates :title, presence: true
  validates :description, presence: true
end
