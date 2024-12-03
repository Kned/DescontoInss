class CreateAddress < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :logradouro, null: false
      t.string :numero, null: false
      t.string :bairro, null: false
      t.string :cidade, null: false
      t.string :estado, null: false
      t.string :cep, null: false
      t.timestamps
    end
  end
end
