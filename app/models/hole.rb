class Hole < ApplicationRecord
  has_many :courses_holes
  has_many :courses, through: :courses_holes

  validates :title, presence: true
  validates :description, presence: true

  def net_score
    # TODO calculate with player allowance
  end
end
