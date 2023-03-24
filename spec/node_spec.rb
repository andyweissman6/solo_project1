require 'rspec'
require "./lib/node"

RSpec.describe Node do
  it "exists" do
    node = Node.new("")
    expect(node).to be_an_instance_of(Node)
  end
  
  it "has data" do
    node = Node.new("plop")
    
    actual = node.data
    expected = "plop"

    expect(actual).to eq(expected)
    # require 'pry'; binding.pry
  end

  it "says next node" do
    node = Node.new("")

    actual = node.next_node
    expected = nil
  end


end





