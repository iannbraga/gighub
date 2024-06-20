class CreateEventos < ActiveRecord::Migration[7.1]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :descricao
      t.datetime :data_hora_inicio
      t.datetime :data_hora_termino
      t.integer :horas_tocadas
      t.integer :minutos_tocados
      t.decimal :cache
      t.decimal :couvert

      t.timestamps
    end
  end
end
