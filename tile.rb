class Tile

    def initialize(pos, bomb = false)
        @position = pos
        @bomb = bomb
        @flag = false
        @revealed = false
    end

    attr_reader :position
    attr_accessor :bomb, :flag, :revealed
end