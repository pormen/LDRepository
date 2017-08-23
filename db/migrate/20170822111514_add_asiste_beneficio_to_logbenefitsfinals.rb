class AddAsisteBeneficioToLogbenefitsfinals < ActiveRecord::Migration[5.0]
  def change
    add_column :logbenefitsfinals, :asistebeneficio, :integer
  end
end
