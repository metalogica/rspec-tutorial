shared_examples "a shared monster" do
  it "has a name" do
    monster = Monster.new(name: 'Shared Monster')
    expect(monster.name).to be_a(String)
  end
end
