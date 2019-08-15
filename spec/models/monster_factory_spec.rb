require 'rails_helper'
require 'support/custom_matchers'
require 'support/shared_contexts'
require 'support/shared_examples'

# Execute the following test with `>_ rspec --flag focus`
describe MonsterFactory, :focus, helper: :monster do
  # Custom matcher to test if a class function to create a ptototype works.
  subject(:expected_monster) { Monster.new(name: 'Cyclops', skin_color: 'Brown', size: 30, health: 100) }

  subject(:new_monster) { MonsterFactory.create_a_monster('Cyclops', 'Brown', 30, 100) }

  # This is the custom matcher
  it 'creates a monster with the specified features' do
    expect(new_monster).to be_the_same_monster_as(expected_monster)
  end
end

# Testing inclusion of global and conditional helpers
describe Helpers, helper: :monster do
  it "has access to the global :test helper" do
    expect(test).to be(:test)
  end

  it "has access to context specific helper :monster_helper" do
    expect(monster_test).to be(:monster_test)
  end
end

# Example of before, after & around hooks.
# https://spin.atomicobject.com/2013/03/24/using-the-rspec-around-hook/
describe "Around Hook Example" do
  around(:each) do |example|
    puts "around each before"
    example.run
    puts "around each after"
  end

  it "gets run in order" do
    puts "in the example"
  end
end

# Shared contexts and behaviours
context "User is authenticated" do
  include_context 'authenticated user'

  it 'should be available within the example group it is imported in.' do
    expect(current_user.first_name).to eq('bob')
  end
end

describe "A Shared Monster" do
  let(:shared_monster) { :monster }
  it_behaves_like "a shared monster"
end
