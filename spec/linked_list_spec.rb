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
  

end


