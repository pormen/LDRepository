class AddActivoToTrabajadors < ActiveRecord::Migration[5.0]
  def change
    add_column :trabajadors, :activo, :text
  end
end
