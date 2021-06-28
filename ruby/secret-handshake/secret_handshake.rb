class SecretHandshake
  def initialize(number)
    @number = number
  end

  def commands
    return [] unless @number.is_a?(Integer)
    
    commands = []

    if @number > 2 ** 4
      reverse_it = true
      @number = @number - 2 ** 4
    end

    [3,2,1,0].each do |index|
      if @number >= 2 ** index
        commands.push(COMMAND_LIST[index])
        @number = @number - 2 ** index
      end

    end

    commands.reverse! if reverse_it
    commands.reverse
  end

  COMMAND_LIST = ['wink', 'double blink', 'close your eyes', 'jump']
end