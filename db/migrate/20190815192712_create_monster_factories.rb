class CreateMonsterFactories < ActiveRecord::Migration[5.2]
  def change
    create_table :monster_factories do |t|
      t.string :name
      t.string :skin_color
      t.integer :size
      t.integer :health

      t.timestamps
    end
  end
end
