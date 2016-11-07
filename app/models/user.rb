class User < ApplicationRecord
  has_many :debts

  validates :name, presence: true

  def to_s
    name
  end
end
