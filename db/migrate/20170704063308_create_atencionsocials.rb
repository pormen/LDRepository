class CreateAtencionsocials < ActiveRecord::Migration[5.0]
  def change
    create_table :atencionsocials do |t|
      t.text :nombre
      t.text :apellidopaterno
      t.text :apellidomaterno
      t.text :rut
      t.text :fecha
      t.text :tipoconsulta
      t.references :benefit, foreign_key: true
      t.text :estado
      t.text :subcontrato
      t.text :obra
      t.text :telefono
      t.integer :atencion
      t.text :supervisor
      t.text :descripcion

      t.timestamps
    end
  end
end
