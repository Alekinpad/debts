class Category < ApplicationRecord
  has_many :categorizations
  has_many :debts, through: :categorizations

  validates :name, presence: true

  def to_s
    name
  end
end
