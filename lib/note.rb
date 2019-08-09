class Note
attr_reader :sentences

  def initialize
    @sentences = []

  end

  def pick

  @sentences.sample

  end


  def self.instance
    @note ||= self.new
  end

  def add(note)

    @sentences << note

  end

end
