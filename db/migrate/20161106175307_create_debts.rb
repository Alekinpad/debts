class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.string :description
      t.integer :amount
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
