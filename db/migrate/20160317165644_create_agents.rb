class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :firstName
      t.string :lastName
      t.string :cellphone
      t.string :email
      t.boolean :isActive

      t.timestamps null: false
    end
  end
end
