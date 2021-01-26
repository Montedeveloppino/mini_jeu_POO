require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
puts "--------------------------------"
puts "|****** WELCOME TO ZORG *******|"
puts "|****** WELCOME TO ZORG *******|"
puts "--------------------------------"

  puts "Mets ton pseudo petit noob"
  user = HumanPlayer.new("#{gets.chomp}", 100)
  player_1 = Player.new("José", 10)
  player_2 = Player.new("Josiane", 10)
  enemies_arr = [player_1, player_2]
  puts "Salut #{user.name}!"
  puts "Tu vas affronter #{player_1.name} et #{player_2.name}"

  while user.life > 0 && (player_1.life > 0 || player_2.life > 0)
    puts "----------------------------------"
    puts "#{user.show_state}"
    puts "#{player_1.show_state}"
    puts "#{player_2.show_state}"
    puts "----------------------------------"
    sleep(1)
    puts "**********************************"
    sleep(0.1)
    puts "Quelle action veux-tu effectuer ?"
    sleep(0.1)
    puts "a - chercher une meilleure arme"
    sleep(0.1)
    puts "s - chercher à se soigner"
    sleep(0.1)
    puts "Attaquer un joueur en vue :"
    sleep(0.1)
    puts "d - Josiane a #{player_2.life} points de vie"
    sleep(0.1)
    puts "f - José a #{player_1.life} points de vie"
    sleep(0.1)
    puts "**********************************"
    menu = gets.chomp
      if menu == "a"
          puts "#{user.search_weapon}"
      end
      if menu == "s"
          puts "#{user.search_health_pack}"
      end
      if menu == "d" && player_2.life > 0
        user.attacks(player_2)
      end
      if menu == "f" && player_1.life > 0
        user.attacks(player_1)
      end
      puts "--------------------------------"
      puts "Les autres joueurs t'attaquent !"
      puts "--------------------------------"
      enemies_arr.each do |autobots|
        next if autobots.life <= 0
        if user.life <= 0
          puts "Les bots ont tué #{user.name}"
        elsif user.life > 0
        autobots.attacks(user)
        end
      end
      if player_1.life < 0
          puts "José a #{player_1.life = 0} point de vie"
      else 
          puts player_1.show_state
      end
      if player_2.life < 0
          puts "Josiane a #{player_2.life = 0} point de vie"
      else 
          puts player_2.show_state
      end
  end

  if user.life == 0
    puts " QUE VOYA CEE TU AS PERDUU"
  end
  if player_1.life == 0 &&  player_2.life == 0 
    puts "******************************"
    sleep (2)
    puts "TU AS GAGNE PETIT(E) MALIN(E)!"
    sleep (2)
    puts "******************************"
  end
  

      