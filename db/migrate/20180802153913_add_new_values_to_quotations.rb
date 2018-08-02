class AddNewValuesToQuotations < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :document, :string
  end
end
