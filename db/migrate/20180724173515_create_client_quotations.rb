class CreateClientQuotations < ActiveRecord::Migration[5.1]
  def change
    create_table :client_quotations do |t|
      t.references :client, foreign_key: true
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
