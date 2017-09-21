json.extract! logloan, :id, :rut_solicitante, :nombre_solicitante, :empresa, :obra, :cargo, :monto_solicitado, :numero_coutas, :monto_pagado, :por_pagar, :motivo_solicitud, :comenatrios, :estado, :created_at, :updated_at
json.url logloan_url(logloan, format: :json)
