require 'pry'
# Secret Handshake class
class SecretHandshake

  attr_accessor(:number)

  # COMMANDS = {
  #   "jump" => 1000,
  #   "close your eyes" => 100,
  #   "double blink" => 10,
  #   "wink" => 1
  # }.freeze

    COMMANDS = {
      1000 => 'jump',             # 8
      100 => 'close your eyes',   # 4
      10 => 'double blink',       # 2
      1 => 'wink'                 # 1
    }

  def initialize(number = 0)
    if number.is_a? String
      number = 0
    end

    if number > 16
      @reverse = true 
      number = number - 16
    end




    @number = number.to_s(2).to_i
  end

  def commands
    output = []
    # reverse = true if @number > 16

    COMMANDS.each do |key, value|
      output.unshift value.to_s if @number / key == 1
      @number = @number % key
      # p value
    end

    if @reverse
      output.reverse
    else
      output
    end

  end
end
# binding.pry