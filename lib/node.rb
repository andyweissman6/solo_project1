class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data)
    @data = (data)
    @next_node = nil
  end
end




#Node references
#next = next node
#current = current node
#previous = previous node
