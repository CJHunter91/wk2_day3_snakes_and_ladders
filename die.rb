class Die

  def initialize()
    @die_numbers = (1..6).to_a
  end

  def roll
    @die_numbers.sample
  end

end