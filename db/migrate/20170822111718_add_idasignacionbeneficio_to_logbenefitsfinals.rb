class AddIdasignacionbeneficioToLogbenefitsfinals < ActiveRecord::Migration[5.0]
  def change
    add_column :logbenefitsfinals, :Idasignacionbeneficio, :integer
  end
end
