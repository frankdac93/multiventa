class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :company
      t.integer :agent
      t.string :cellphone
      t.string :fax
      t.string :email
      t.string :website
      t.boolean :isActive
      t.integer :payType

      t.timestamps null: false
    end
  end
end
