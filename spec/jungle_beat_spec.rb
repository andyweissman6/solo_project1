require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
    require 'pry'; binding.pry
  end
end