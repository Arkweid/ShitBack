class CreateTariffs < ActiveRecord::Migration[5.1]
  def change
    create_table :tariffs do |t|
      t.belongs_to  :user
      t.string      :name
      t.text        :description
      t.integer     :tax
      t.integer     :traffic_limit
      t.integer     :traffic_current

      t.timestamps
    end
  end
end
