require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  describe "Iteration 1" do
    it "begins without a head" do
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

    it "counts the 1 node in list" do
      list = LinkedList.new
      list.append("doop")

      actual = list.count
      expected = 1
      
      expect(actual).to eq(expected)
    end 

    it "will put data into a string" do
      list = LinkedList.new
      list.append("doop")
      
      actual = list.to_string
      expected = "doop"
    
      expect(actual).to eq(expected)
      
    end

    it "will append 'deep'" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      actual = list.to_string
      expected = "doop deep"
    
      expect(actual).to eq(expected)

      expect(list.head.next_node).to be_a(Node)

      expect(list.head.next_node.data).to eq("deep")
    end
    
    it "counts the 2 nodes in list" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      
      actual = list.count
      expected = 2
      
      expect(actual).to eq(expected)
      # expect(list.head.next_node).to eq("deep")
      
    end
  end
end

  describe "Iteration 2" do
    it "appends 'plop' " do
      
      list = LinkedList.new
      list.append("plop")
      
      actual = list.to_string
      expected = "plop"
      
      expect(actual).to eq(expected)
      # require 'pry'; binding.pry
    end

    it "appends 'suu' " do
      list = LinkedList.new
    
      actual = list.append("suu")
      expected = "suu"
      
      expect(actual).to eq(expected)
      
      # require 'pry'; binding.pry
    end

    it "prepends 'dop' " do
      list = LinkedList.new

      actual = list.prepend("dop")
      expected = "dop"

      expect(actual).to eq(expected)
    end

    it "displays string of 'dop plop suu' " do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      actual = list.to_string
      expected = "dop plop suu"

      expect(actual).to eq(expected)
    end
  end








  
  

  

  # describe "Iteration 2" do


# list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>

# list.head.next_node
# => nil

# list.count
# => 1

# list.to_string
# => "doop"

