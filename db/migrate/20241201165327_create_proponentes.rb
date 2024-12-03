class CreateProponentes < ActiveRecord::Migration[7.1]
  def change
    create_table :proponentes do |t|
      t.string :nome, null: false
      t.string :cpf,  null: false
      t.date :nascimento,  null: false
      t.string :telefone_pessoal
      t.string :telefone_referencia
      t.float :salario,  null: false
      t.float :desconto
      t.timestamps
    end
  end
end
