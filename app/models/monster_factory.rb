class MonsterFactory < ApplicationRecord
  def self.create_a_monster(name, skin_color, size, health)
    Monster.create({
      name: name,
      skin_color: skin_color,
      size: size,
      health: health
    })
  end
end
