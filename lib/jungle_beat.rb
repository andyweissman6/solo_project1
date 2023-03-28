class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    
    sounds = data.split
    sounds.each do |sound|
      @list.append(sound)
    end
    data
  end

  def count
    @list.count
  end

  def play
    sounds = @list.to_string
    `say -r 500 -v Boing #{sounds}`
    require 'pry'; binding.pry
  end

end
