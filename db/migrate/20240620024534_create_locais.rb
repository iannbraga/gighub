class CreateLocais < ActiveRecord::Migration[7.1]
  def change
    create_table :locais do |t|
      t.string :nome
      t.string :descricao
      t.string :localizacao

      t.timestamps
    end
  end
end
