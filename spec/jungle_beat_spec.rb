require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"
require 'rspec'

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new
    # require 'pry'; binding.pry
    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it "has readable attributes" do
    jb = JungleBeat.new

    expected = jb.list.head
    actual = nil
    expect(actual).to eq(expected)
  end

  it "appends to the list" do
    jb = JungleBeat.new
    
    expected = jb.append("deep doo ditt")
    actual = "deep doo ditt"
    expect(actual).to eq(expected)

    expected = jb.list.head.data
    actual = "deep"
    expect(actual).to eq(expected)
    
    
    expected = jb.list.head.next_node.data
    actual = "doo"
    expect(actual).to eq(expected)

    expected = jb.append("woo hoo shu")
    actual = "woo hoo shu"
    expect(actual).to eq(expected)
  end

  it "counts nodes in list, then plays" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    
    expected = jb.count
    actual = 6
    expect(actual).to eq(expected)

    jb.play

  end
end