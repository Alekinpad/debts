class AddUserIdToDebts < ActiveRecord::Migration[5.0]
  def change
    add_reference :debts, :user, foreign_key: true
  end
end
