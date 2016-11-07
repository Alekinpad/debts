class Debt < ApplicationRecord
  has_many :categorizations
  has_many :categories, through: :categorizations
  belongs_to :user
  has_many :payments

  before_save :update_status

  validate :check_exceed_payments

  def payed_amount
    payments.collect(&:amount).sum
  end

  def pending_amount
    amount - payed_amount
  end

  private

  def update_status
    self.status = if pending_amount.zero?
                    'Pagado'
                  else
                    'Pendiente'
                  end
  end

  def check_exceed_payments
    # Si el monto total excede el monto de la deuda, no guardar
    if payed_amount > amount
      errors.add(:payed_amount, "Excede el valor de la deuda")
    end
  end
end
