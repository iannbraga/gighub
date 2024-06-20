json.extract! evento, :id, :nome, :descricao, :data_hora_inicio, :data_hora_termino, :horas_tocadas, :minutos_tocados, :cache, :couvert, :created_at, :updated_at
json.url evento_url(evento, format: :json)
