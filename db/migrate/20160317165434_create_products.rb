class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codeProduct
      t.integer :codeProvider
      t.string :description
      t.string :details
      t.integer :category
      t.integer :subcategory
      t.string :image
      t.decimal :price1
      t.decimal :price2
      t.decimal :price3
      t.decimal :cost
      t.boolean :isActive
      t.boolean :isExcent
      t.boolean :isInventary
      t.decimal :inventary
      t.string :unitSize
      t.date :expiredDate

      t.timestamps null: false
    end
  end
end
