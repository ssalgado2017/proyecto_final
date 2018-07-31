class RemoveClientIdFromQuotation < ActiveRecord::Migration[5.1]
  def change
    remove_reference :quotations, :client, foreign_key: true
  end
end
