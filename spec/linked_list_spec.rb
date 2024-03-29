require "./lib/linked_list"
require "./lib/node"
require 'rspec'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end
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
  
  it "counts the 2 nodes in list; in correct order" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    
    actual = list.count
    expected = 2
    
    expect(actual).to eq(expected)
    
    expect(list.head.next_node.data).to eq("deep")
    
  end
end


describe "Iteration 2" do
  it "appends 'plop' " do
    
    list = LinkedList.new
    list.append("plop")
    
    actual = list.to_string
    expected = "plop"
    
    expect(actual).to eq(expected)

  end

  it "appends 'suu' " do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    
    actual = list.to_string
    expected = "plop suu"
    
    expect(actual).to eq(expected)

    # expect(list.head.next_node.data).to eq("deep")
  end

  it "prepends 'dop' " do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    actual = list.to_string
    expected = "dop plop suu"

    expect(actual).to eq(expected)
  end

  it "counts 3 nodes 'dop plop suu' " do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    
    actual = list.count
    expected = 3
    # require 'pry'; binding.pry
    expect(actual).to eq(expected)
  end

  it "inserts 'woo' between 'dop' and 'plop' " do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    actual = list.to_string
    expected = "dop woo plop suu"

    expect(actual).to eq(expected)
  end
  
  it "displays 'dop woo plop suu' " do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    
    
    actual = list.to_string
    expected = "dop woo plop suu"

    expect(actual).to eq(expected)
  end

  it "using 'DOGGY' to confirm insert method truly works" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    list.insert(3, "DOGGY")

    actual = list.to_string
    expected = "dop woo plop DOGGY suu"

    expect(actual).to eq(expected)
  end

  it "uses 'find' to " do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.to_string

    actual = list.find(2, 1)
    expected = "shi"
    expect(actual).to eq(expected)

    actual = list.find(1, 3)
    expected = "woo shi shu"

    expect(actual).to eq(expected)
  end

  it "includes" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.to_string
    
    actual = list.includes?("deep")
    expected = true

    expect(actual).to eq(expected)

    actual = list.includes?("dep")
    expected = false

    expect(actual).to eq(expected)

  end

  it "removes last element from list" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.to_string
    
    actual = list.pop
    expected ="blop"
    expect(actual).to eq(expected)
  
    actual = list.pop
    expected = "shu"
    expect(actual).to eq(expected)

    actual = list.to_string
    expected = "deep woo shi"
    expect(actual).to eq(expected)
      
  end
end










  
  

  


