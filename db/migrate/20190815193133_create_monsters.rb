class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :skin_color
      t.string :size
      t.string :integer
      t.integer :health

      t.timestamps
    end
  end
end
