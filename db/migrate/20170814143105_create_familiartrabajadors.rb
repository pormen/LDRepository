class CreateFamiliartrabajadors < ActiveRecord::Migration[5.0]
  def change
    create_table :familiartrabajadors do |t|
      t.text :rut
      t.text :nombre
      t.text :relacion
      t.references :trabajador, foreign_key: true

      t.timestamps
    end
  end
end
