class CreatePaymentsDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :payments_details do |t|
      t.integer :number
      t.string :description
      t.integer :percentage
      t.float :rode
      t.timestamp :date_payment
      t.timestamp :date_payment_real
      t.string :hes
      t.references :payments, foreign_key: true

      t.timestamps
    end
  end
end
