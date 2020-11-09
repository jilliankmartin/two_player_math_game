require_relative 'player.rb'
require_relative 'questions.rb'

print "*******WELCOME TO THE TWO PLAYER MATH GAME*******\n"
print "PLAYER 1, WHAT IS YOUR NAME?"

player1_name = gets.chomp

player1 = Player.new(player1_name)

print "PLAYER 2, WHAT IS YOUR NAME?"

player2_name = gets.chomp

player2 = Player.new(player2_name)

puts "Loading game with players #{player1.name} and #{player2.name}...\n"

def round(current_player, other_player)

  question = Question.new

  print "#{current_player.name}, what is #{question.num1} + #{question.num2}?"

  answer = gets.chomp.to_i

  if answer == question.answer
    print "That answer is correct!\n"
  else 
    print "That answer is incorrect!\n"
    current_player.lives -= 1
  end

  print "#{current_player.name}: #{current_player.lives}/3 vs #{other_player.name}: #{other_player.lives}/3\n"

end

loop do
  print "----- NEW TURN -----\n"
  round(player1, player2)
  break if player1.lives == 0  || player2.lives == 0
  print "----- NEW TURN -----\n"
  round(player2, player1)
  break if player1.lives == 0  || player2.lives == 0
end

# while player1.lives != 0  && player2.lives != 0 do
#   print "----- NEW TURN -----\n"
#   round(player1, player2)
# end

print "GAME OVER\n"

# puts q1.total

# puts q1.generate_num1
# puts q1.generate_num1
# puts q1.generate_num1
# puts q1.generate_num1
# puts q1.generate_num1

# player1.lives -= 1

# puts player1.lives

