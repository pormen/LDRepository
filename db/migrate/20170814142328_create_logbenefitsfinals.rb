class CreateLogbenefitsfinals < ActiveRecord::Migration[5.0]
  def change
    create_table :logbenefitsfinals do |t|
      t.text :areabeneficio
      t.text :nombrebeneficio
      t.text :costoempresa
      t.text :costotrabajador
      t.text :ruttrabajador
      t.text :nombretrabajador
      t.text :rutbeneficiario
      t.text :nombrebeneficiario
      t.text :relacion
      t.text :nombreobra

      t.timestamps
    end
  end
end
