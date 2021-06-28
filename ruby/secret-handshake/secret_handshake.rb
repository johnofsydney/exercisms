class SecretHandshake
  def initialize(number)
    @number = number
  end

  def commands
    return [] unless @number.is_a?(Integer)
    commands = []

    if @number > 2 ** 4
      reverse_it = true
      @number -= 2 ** 4
    end

    COMMAND_LIST
      .each_with_index
      .map{ |command, index| {command: command, power: index} }
      .reverse
      .each do |h|
        if @number >= 2 ** h[:power]    # if the number is large enough
          commands.unshift h[:command]  # add it to the array
          @number -= 2 ** h[:power]     # and reduce the number accordingly
        end
      end

    commands.reverse! if reverse_it
    commands
  end

  private

  COMMAND_LIST = ['wink', 'double blink', 'close your eyes', 'jump']
end