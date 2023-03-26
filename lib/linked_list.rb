class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end
# require 'pry'; binding.pry

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      previous_node = @head
      new_node = Node.new(data)
      while previous_node.next_node != nil
        previous_node = previous_node.next_node
      end
      previous_node.next_node = new_node
    end
    data
  end

  def count
    counter = 0
    current_node = head
    #note head is defined within this method
    #whereas @head is global
    until current_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end





  # def to_string


  







end









