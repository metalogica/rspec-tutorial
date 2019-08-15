class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.boolean :authenticated
      t.string :address
      t.integer :age
      t.string :rights

      t.timestamps
    end
  end
end
