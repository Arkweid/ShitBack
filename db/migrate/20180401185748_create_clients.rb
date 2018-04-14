class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.belongs_to  :user
      t.belongs_to  :tariff

      t.string      :email
      t.string      :contract_number
      t.boolean     :payed, default: true

      t.timestamps
    end

    add_index :clients, :email, unique: true
  end
end
