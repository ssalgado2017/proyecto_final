class AddClientToQuotation < ActiveRecord::Migration[5.1]
  def change
    add_reference :quotations, :client, foreign_key: true
  end
end
