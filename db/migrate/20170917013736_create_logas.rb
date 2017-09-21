class CreateLogas < ActiveRecord::Migration[5.0]
  def change
    create_table :logas do |t|
      t.integer :asocial_id
      t.text :user_name
      t.text :codigo_obra
      t.text :rut_atendido
      t.text :nombre_atendido
      t.text :apellido_paterno_paterno_atendido
      t.text :apellido_materno_atendido
      t.text :aspcategory_name
      t.text :solucion
      t.boolean :estado
      t.boolean :subcontrato
      t.text :supervisor
      t.text :descripcion
      t.text :rut_pariente
      t.text :nombre_pariente
      t.text :apellido_paterno_pariente
      t.text :apellido_materno_pariente
      t.text :parentezco
      t.text :empresa
      t.text :comentarios_caso
      t.text :caso_amerita_epc
      t.text :derivar_a
      t.integer :codigo
      t.integer :epcformulary_id
      t.integer :rut_atendido_epc
      t.integer :codigo_epc
      t.integer :telefono
      t.string :beneficio

      t.timestamps
    end
  end
end
