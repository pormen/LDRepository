class AddEstadoToTrabajadors < ActiveRecord::Migration[5.0]
  def change
    add_column :trabajadors, :estado, :text
  end
end
