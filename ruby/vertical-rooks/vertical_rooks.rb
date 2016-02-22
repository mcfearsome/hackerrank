#!/bin/ruby
# Sample Input:
# 1   (Test Cases)
# 3   (Size of Board)
# 1   (Player 1 Column 1 Row)
# 2   (Player 1 Column 2 Row)
# 2   (Player 1 Column 3 Row)
# 3   (Player 2 Column 1 Row)
# 1   (Player 2 Column 2 Row)
# 1   (Player 2 Column 3 Row)

def player_2_wins?(player_1, player_2)
  xor_sum = 0
  player_1.each_index do |i|
    dist = (player_1[i] - player_2[i]).abs
    xor_sum ^= (dist-1)
  end
  return xor_sum != 0
end

t = gets.strip.to_i
for a0 in (0..t-1)
  board_size = gets.strip.to_i
  board_configuration = []
  for a1 in (0..(board_size*2-1))
    board_configuration.push(gets.strip.to_i)
  end
  p1conf = board_configuration[0,board_size]
  p2conf = board_configuration[board_size,board_size]

  if player_2_wins?(p1conf, p2conf)
    puts "player-2"
  else
    puts "player-1"
  end
end
