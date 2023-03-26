require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "head is nil" do
    list = LinkedList.new
    
    actual = list.head
    expected = nil

    expect(actual).to eq(expected)
  end

  it "will append 'doop'" do
    list = LinkedList.new

    actual = list.append("doop")
    expected = "doop"
    expect(actual).to eq(expected)
  end

  it "will count the nodes" do
    list = LinkedList.new
    
    actual = list.count
    expected = 1
    
    expect(actual).to eq(expected)
  end 

  


end

# list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>

# list.head.next_node
# => nil

# list.count
# => 1

# list.to_string
# => "doop"

