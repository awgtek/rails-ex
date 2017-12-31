class CreateDenominations < ActiveRecord::Migration[5.1]
  def change
    create_table :denominations do |t|
      t.string :name

      t.timestamps
    end
  end
end
