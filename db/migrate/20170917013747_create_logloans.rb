class CreateLogloans < ActiveRecord::Migration[5.0]
  def change
    create_table :logloans do |t|
      t.text :rut_solicitante
      t.text :nombre_solicitante
      t.text :empresa
      t.text :obra
      t.text :cargo
      t.text :monto_solicitado
      t.text :numero_coutas
      t.text :monto_pagado
      t.text :por_pagar
      t.text :motivo_solicitud
      t.text :comenatrios
      t.text :estado

      t.timestamps
    end
  end
end
