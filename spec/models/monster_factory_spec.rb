require 'rails_helper'
require 'support/custom_matchers'

describe MonsterFactory do
  # Custom matcher to test if a class function to create a ptototype works.
  subject(:expected_monster) { Monster.new(name: 'Cyclops', skin_color: 'Brown', size: 30, health: 100) }

  subject(:new_monster) { MonsterFactory.create_a_monster('Cyclops', 'Brown', 30, 100) }

  it 'creates a monster with the specified features' do
    expect(new_monster).to be_the_same_monster_as(expected_monster)
  end
end
