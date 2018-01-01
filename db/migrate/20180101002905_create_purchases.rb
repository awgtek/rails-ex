class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :common_name
      t.string :specific_name
      t.belongs_to :category, foreign_key: true
      t.belongs_to :shop, foreign_key: true
      t.decimal :price
      t.decimal :quantity
      t.decimal :subquantity
      t.belongs_to :denomination, foreign_key: true
      t.boolean :is_sale

      t.timestamps
    end
  end
end
