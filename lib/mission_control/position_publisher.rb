module MissionControl
  class PositionPublisher
    def initialize(rovers, output: STDOUT)
      @rovers = rovers
      @output = output
    end

    def publish
      rovers.each do |rover|
        output.puts rover.position
      end
    end

    private

    attr_reader :output, :rovers
  end
end
