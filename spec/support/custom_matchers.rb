module MonsterFactoryCustomMatchers
  RSpec::Matchers.define :be_the_same_monster_as do |expected_monster|
    match do |actual_monster|
      actual_monster.name == expected_monster.name &&
      actual_monster.skin_color == expected_monster.skin_color &&
      actual_monster.size == expected_monster.size &&
      actual_monster.health == expected_monster.health
    end

    failure_message do |actual_monster|
      "expected that #{actual_monster} would have all the attributes as the #{expected_monster}.\n
      Attributes: \n
      ACTUAL | EXPECTED \n
      #{actual_monster.name}|#{expected_monster.name}
      #{actual_monster.skin_color}|#{expected_monster.skin_color}
      #{actual_monster.size}|#{expected_monster.size}
      #{actual_monster.health}|#{expected_monster.health}"
    end
  end
end
