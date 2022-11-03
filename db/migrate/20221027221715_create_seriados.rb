class CreateSeriados < ActiveRecord::Migration[7.0]
  def change
    create_table :seriados do |t|
      t.string :nome
      t.date :dataDeLancamento
      t.integer :episodios
      t.text :descricao
      t.string :diretor

      t.timestamps
    end
  end
end
