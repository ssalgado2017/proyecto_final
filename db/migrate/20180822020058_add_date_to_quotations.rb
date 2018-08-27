class AddDateToQuotations < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :date_create, :datetime
  end
end
