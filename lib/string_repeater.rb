class StringRepeater
  def initialize(user_io)
    @user_io = user_io
  end

  def run
    @user_io.puts "Hello. I will repeat a string many times."
    @user_io.puts "Please enter a string"
    string = @user_io.gets.chomp
    @user_io.puts "Please enter a number of repeats"
    repeats = @user_io.gets.chomp
    @user_io.puts "Here is your result:"
    @user_io.puts string * repeats.to_i

  end
    
end

#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX