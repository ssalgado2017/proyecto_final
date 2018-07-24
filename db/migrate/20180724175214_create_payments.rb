class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :OC
      t.string :coin
      t.float :rode
      t.boolean :iva
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
