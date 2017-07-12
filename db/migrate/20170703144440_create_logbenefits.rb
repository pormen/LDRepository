class CreateLogbenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :logbenefits do |t|
      t.references :assignbenefit, foreign_key: true

      t.timestamps
    end
  end
end
