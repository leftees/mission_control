module MissionControl
  class Rover
    attr_reader :x, :y, :direction

    def initialize(x:, y:, direction:)
      @x = Integer(x)
      @y = Integer(y)
      @direction = direction
    end

    def move(command)
      case command
        when 'L'
          turn_left
        when 'R'
          turn_right
        when 'M'
          move_forward
      end
    end

    def position
      "#{x} #{y} #{direction}"
    end

    private

    attr_writer :x, :y, :direction

    def directions
      %w(N E S W)
    end

    def turn_left
      if direction == 'N'
        self.direction = 'W'
      else
        self.direction = directions[directions.index(direction) - 1]
      end
    end

    def turn_right
      if direction == 'W'
        self.direction = 'N'
      else
        self.direction = directions[directions.index(direction) + 1]
      end
    end

    def move_forward
      case direction
        when 'N'
          self.y += 1
        when 'E'
          self.x += 1
        when 'S'
          self.y -= 1
        when 'W'
          self.x -= 1
      end
    end
  end
end
