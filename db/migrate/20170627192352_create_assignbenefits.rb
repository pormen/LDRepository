class CreateAssignbenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :assignbenefits do |t|
      t.references :benefit, foreign_key: true
      t.text :ruttrabajador
      t.text :rutbeneficiario
      t.text :relacion
      t.text :fechanacimiento
      t.text :fecha
      t.integer :idobra

      t.timestamps
    end
  end
end
