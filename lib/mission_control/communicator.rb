module MissionControl
  class Communicator
    attr_reader :commands, :rovers

    def initialize(commands)
      @rovers = []
      @commands = commands
    end

    def communicate
      commands.each do |command|
        execute_command(command)
      end

      rovers
    end

    private

    def current_rover
      rovers.last
    end

    def execute_command(command)
      command_data = command.split(' ')

      case command_data.length
        when 1
          issue_commands(*command_data)
        when 2
          # There is currently no use for the grid limits, so it's ignored.
        when 3
          initialize_rover(command_data)
      end
    end

    def initialize_rover(command_data)
      rovers << Rover.new(x: command_data[0], y: command_data[1], direction: command_data[2])
    end

    def issue_commands(commands)
      commands.each_char do |command|
        current_rover.move(command)
      end
    end
  end
end
