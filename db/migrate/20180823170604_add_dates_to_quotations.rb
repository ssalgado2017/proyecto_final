class AddDatesToQuotations < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :date_derivate, :datetime
    add_column :quotations, :date_sent, :datetime
    add_column :quotations, :date_approved, :datetime
    add_column :quotations, :date_rejected, :datetime
  end
end
