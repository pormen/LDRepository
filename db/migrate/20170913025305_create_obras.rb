class CreateObras < ActiveRecord::Migration[5.0]
  def change
    create_table :obras do |t|
      t.text :nombre
      t.text :direccion
      t.text :codigo

      t.timestamps
    end
  end
end
