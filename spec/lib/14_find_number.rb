# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    average = ((@min + @max) / 2).floor
  end

  def game_over?
    if @guess == @answer
      true
    else
      false
    end
  end

  def update_range
    if @guess < @answer
      @min = 5
    elsif @guess > @answer
      @max = 8
    elsif @guess == 7 and @min == 5 and @max == 8
      @min = @max 
    end
  end
end
