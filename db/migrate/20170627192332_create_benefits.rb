class CreateBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :benefits do |t|
      t.text :nombre
      t.references :areabenefit, foreign_key: true
      t.integer :costotrabajador
      t.integer :costoempresa
      t.integer :familia
      t.integer :asistencia

      t.timestamps
    end
  end
end
