class User < ApplicationRecord
  has_many :debts

  def to_s
    name
  end
end
