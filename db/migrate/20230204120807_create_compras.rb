class CreateCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :compras do |t|
      t.string :name
      t.datetime :date
      t.float :price

      t.timestamps
    end
  end
end
