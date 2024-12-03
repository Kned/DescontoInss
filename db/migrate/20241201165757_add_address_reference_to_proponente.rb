class AddAddressReferenceToProponente < ActiveRecord::Migration[7.1]
  def change
    add_reference :addresses, :proponente, null: false, foreign_key: true
  end
end
