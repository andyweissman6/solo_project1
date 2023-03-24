class Node
  attr_reader :data,
              :next_node
  def initialize(data)
    @data = (data)
    @next_node = next_node
    # require 'pry'; binding.pry
  end
end

