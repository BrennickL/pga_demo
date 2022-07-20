class CoursesHole < ApplicationRecord
  belongs_to :course
  belongs_to :hole

  validates :order, presence: true, numericality: { only_integer: true }
end
