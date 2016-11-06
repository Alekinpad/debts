class Payment < ApplicationRecord
  belongs_to :debt

  after_destroy :update_debt_status

  private

  def update_debt_status
    debt.status = if debt.pending_amount.zero?
                    'Pagado'
                  else
                    'Pendiente'
                  end
    debt.save
  end
end
