class CreateQuoteDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :quote_details do |t|
      t.string :applicant
      t.string :email
      t.timestamp :application_date
      t.timestamp :response_date
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
