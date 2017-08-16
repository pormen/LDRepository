class AddFechanacimientoToFamiliartrabajadors < ActiveRecord::Migration[5.0]
  def change
    add_column :familiartrabajadors, :fechanacimiento, :text
  end
end
