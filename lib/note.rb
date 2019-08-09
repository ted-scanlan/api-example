class Note
attr_reader :sentence

  def initialize
    @sentence = pick

  end

  def pick

  @sentences = ["I love tables", "time exists so nothing happens at once", "are we going to tomorrow or is tomorrow coming to us?", "parsnips are one of my favourite vegetables"].sample

  end


  def self.instance
    @sentence ||= self.new
  end

  def update
    @sentence = pick

end

end
