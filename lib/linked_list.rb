class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end


  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      previous_node = @head
      new_node = Node.new(data)
      until previous_node.next_node == nil
        previous_node = previous_node.next_node
      end
      previous_node.next_node = new_node
    end
    data 
    #last line returns what you want so we put @data here
  end


  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      former_head = @head
      @head = Node.new(data)
      @head.next_node = former_head
    end
    data
  end


  def insert(index, data)
    counter = 1
    current_node = @head 
    until counter == index
      counter += 1
      current_node = current_node.next_node
      #moves over one place 
    end
    placeholder = current_node.next_node
    insert_node = Node.new(data)
    current_node.next_node = insert_node 
    insert_node.next_node = placeholder
    data
  end

  def find (index, num_items)
    counter = 0
    item_counter = 0
    string = ""
    current_node = @head 
    until counter == index
      counter += 1
      current_node = current_node.next_node
      #moves over one place 
    end
    until num_items == item_counter
      string << "#{current_node.data} "
      # require 'pry'; binding.pry
      item_counter += 1
      current_node = current_node.next_node
    end
    string.rstrip
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
    sounds = ""
    current_node = head
    until current_node == nil
      sounds << "#{current_node.data} "
      current_node = current_node.next_node
      #assigns current node to next node
      # way form going from one node to the next
    end
    sounds.rstrip
  end

  
  def includes?(data)
    to_string.include?(data)
  end

  def pop
    unless @head.nil?
      current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
        #look 2 spaces ahead to see empty, to then indetify the tail
      end
      tail = current_node.next_node
      current_node.next_node = nil
    end
      tail.data
  end



  
end









