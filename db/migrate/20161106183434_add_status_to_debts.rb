class AddStatusToDebts < ActiveRecord::Migration[5.0]
  def change
    add_column :debts, :status, :string
  end
end
