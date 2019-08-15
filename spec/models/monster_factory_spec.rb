require 'rails_helper'
require 'support/custom_matchers'

# Execute the following test with `>_ rspec --flag focus`
describe MonsterFactory, :focus, helper: :monster do
  # Custom matcher to test if a class function to create a ptototype works.
  subject(:expected_monster) { Monster.new(name: 'Cyclops', skin_color: 'Brown', size: 30, health: 100) }

  subject(:new_monster) { MonsterFactory.create_a_monster('Cyclops', 'Brown', 30, 100) }

  it 'creates a monster with the specified features' do
    expect(new_monster).to be_the_same_monster_as(expected_monster)
  end
end


describe Helpers, helper: :monster do
  it "has access to the :test helper" do
    expect(test).to be(:test)
  end

  it "has access to context specific helper :monster_helper" do
    expect(monster_test).to be(:monster_test)
  end
end
