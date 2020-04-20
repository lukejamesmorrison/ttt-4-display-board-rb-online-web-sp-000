# Define display_board that accepts a board and prints
# out the current state.
board = [" ","X"," "," "," "," "," "," "," "]
HORIZONTAL_SEP = "|"
VERTICAL_SEP = "-----------"

def display_board(cells)
  line = ''
  cells.each_with_index do |cell, index|
    if((index + 1) % 3 === 0)
      line =  "#{line} #{cell} "
      puts line
      puts index + 1 === cells.length ? "" : VERTICAL_SEP
      line = ''
    else
      line = "#{line} #{cell} #{HORIZONTAL_SEP}"
    end
  end
end

display_board(board)
