class CreateTrabajadors < ActiveRecord::Migration[5.0]
  def change
    create_table :trabajadors do |t|
      t.text :nombre
      t.text :rut
      t.references :centrocosto, foreign_key: true

      t.timestamps
    end
  end
end
