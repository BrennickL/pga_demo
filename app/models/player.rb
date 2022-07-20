class Player < ApplicationRecord
  has_many :games, through: :players_games

  before_validation :calculate_allowance

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :allowance, presence: true, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 20
  }

  private

  def calculate_allowance
    return if allowance.present?

    self.allowance = (0..20).to_a.sample
  end

  def full_name
    "#{last_name}, #{first_name}"
  end
end
