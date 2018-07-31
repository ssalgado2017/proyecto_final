class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :estados do |t|
      t.string :nombre
      t.integer :tiempo_respuesta

      t.timestamps
    end
  end
end
