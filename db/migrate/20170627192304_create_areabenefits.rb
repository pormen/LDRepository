class CreateAreabenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :areabenefits do |t|
      t.text :nombre

      t.timestamps
    end
  end
end
