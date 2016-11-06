class Category < ApplicationRecord
  has_many :categorizations
  has_many :debts, through: :categorizations

  def to_s
    name
  end
end
