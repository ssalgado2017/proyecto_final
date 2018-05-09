class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.integer :rut
      t.string :dv
      t.string :business_name

      t.timestamps
    end
  end
end
