class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    get_minued
    get_subtrahend
    @result = @minued - @subtrahend
    print_result
  end

  private

  def get_minued
    @terminal.puts "Please enter a number"
    @minued = @terminal.gets.chomp.to_i
  end

  def get_subtrahend
    @terminal.puts "Please enter another number"
    @subtrahend = @terminal.gets.chomp.to_i
  end

  def print_result
    @terminal.puts "Here is your result:"
    @terminal.puts "#{@minued} - #{@subtrahend} = #{@result}"
  end

end

#interactive_calculator = InteractiveCalculator.new(Kernel)
#interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
