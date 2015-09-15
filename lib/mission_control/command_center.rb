module MissionControl
  class CommandCenter
    def initialize(commands)
      @commands = commands
    end

    def execute
      online_rovers = Communicator.new(commands).communicate

      PositionPublisher.new(online_rovers).publish
    end

    private

    attr_reader :commands
  end
end
