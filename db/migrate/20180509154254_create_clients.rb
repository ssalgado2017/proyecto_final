class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.integer :rut
      t.string :dv
      t.string :name
      t.string :last_name
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
