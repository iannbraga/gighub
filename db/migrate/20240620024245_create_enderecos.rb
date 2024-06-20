class CreateEnderecos < ActiveRecord::Migration[7.1]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cep

      t.timestamps
    end
  end
end
