class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    # require 'pry'; binding.pry

    if @head.nil?
      @head = Node.new(data)
      #if head is nil, then it is empty, so create
      # a node to become the head
    else
      previous_node = @head
      new_node = Node.new(data)
      #if head is not empty, head must be the previous node
      while previous_node.next_node != nil
        #.next_node is how we chain these together 
        previous_node = previous_node.next_node
      end
      previous_node.next_node = new_node
    end
    data
    #puts data/sound within the node
  

  end

  def count
    counter = 0
    current_node = head
    #note head is defined within this method
    #whereas @head is global
    until current_node.nil?
      #until current node IS nil/empty
      current_node = current_node.next_node
      counter += 1
    end
    counter 
  end

  def to_string      
    sounds = []
    current_node = head
    while current_node != nil
      sounds << current_node.data
      current_node = current_node.next_node
    end
    sounds.join(" ")
  end



end









