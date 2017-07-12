class CreateAsignarmultiplebeneficios < ActiveRecord::Migration[5.0]
  def change
    create_table :asignarmultiplebeneficios do |t|
      t.references :trabajador, foreign_key: true
      t.references :centrocosto, foreign_key: true
      t.references :areabenefit, foreign_key: true
      t.references :benefit, foreign_key: true

      t.timestamps
    end
  end
end
