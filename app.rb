require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

Player
player_1 = Player.new("Josiane", 10)
player_2 = Player.new("José", 10)
puts "--------------------------"
puts "The fight is beginning !"
puts "Voici l'état de chaque joueur"
sleep(1)
puts "--------------------------"
puts "A ma droite, Josiane"
print "#{player_1.show_state}"
sleep(1)
puts "--------------------------"
puts "A ma gauche, José"
print "#{player_2.show_state}"
sleep(1)
puts "***************************"
puts "Passons à la phase d'attaque!"
puts "***************************"
print player_1.attacks(player_2)
sleep(1)
puts "***************************"
print player_2.attacks(player_1)
sleep(1)
puts "***************************"
sleep(2)
while player_1.life > 0 && player_2.life > 0 
    puts player_1.attacks(player_2)
    if player_2.life <=0
      break
    else
    puts player_2.attacks(player_1)
    end
    puts "***************************"
end
puts "******************************"
puts "END OF THE BATTLE - FINISH HIM"
puts "******************************"