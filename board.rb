require_relative 'tile'

class Board

    def initialize
        skele_grid = Array.new(9) { Array.new(9) }
        grid = Array.new
        skele_grid.each_with_index.map { |row, i|
            row.each_with_index.map { |tile, j|
            #this puts a bomb in 20% of tiles
            random = rand(5)
            if random == 0
                tile = Tile.new(Array.new << i << j, true)
            else
                tile = Tile.new(Array.new << i << j)
            end
            grid << tile } }
        @grid = grid
        
    end

    attr_reader :grid

    def render
        @grid.each do |tile|
            if tile.revealed == false
                p "*"
            end
        end
    end

end

test = Board.new

test.render
