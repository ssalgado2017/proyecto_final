class CreateQuotations < ActiveRecord::Migration[5.1]
  def change
    create_table :quotations do |t|
      t.string :code_quotation
      t.string :title
      t.text :description
      t.references :state, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
