class Player
    attr_accessor :name, :life
#On initialise les paramètres
  def initialize (name, life)
    @life = life
    @name = name
    
  end
#On définit la méthode show state pour afficher l'état de vie du joueur
  def show_state
    puts "#{@name} à #{@life} points de vie"
  end
#On Calcule les dégats infligés au joueur par cette méthode
  def gets_damage(n)
    @life = @life - n
    puts "#{@name} à #{@life} points de vie"
    if @life <= 0
      puts "****#{@name} est mort!****"
      sleep(3)
    end
  end
#Notre methode attacks qui va appeler la méthode //compute damage//
#Celle ci s'applique a gets damage pour le joueur attaqué
def attacks(name)
    puts "le joueur #{@name} attaque le joueur #{name.name}"
    nb = compute_damage
    puts "il lui inflige #{nb} point(s) de domages"
    name.gets_damage(nb)  
  end
#Ici, notre méthode random qui va calculer au hasard le domage qu'on va attribuer au joueur attaqué
  def compute_damage
    return rand(1..6)
  end
end


class HumanPlayer < Player

  attr_accessor :weapon_level, :life_points
  def initialize(name, life)
    @weapon_level = 1
      super(name,life)
  end

  def show_state
    puts "#{name} à #{life} points de vie et une arme de niveau #{weapon_level} "
  end
  def compute_damage
    rand(1..6) * @weapon_level
  end
  def search_weapon
    weapon_random = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{weapon_random}"
    if weapon_random > weapon_level
      puts"Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      return @weapon_level = weapon_random
    else weapon_random <= @weapon_level
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
      return weapon_level
    end
  end
  def search_health_pack
    regen_life = rand(1..6)
    if regen_life == 1
      puts "Tu n'as rien trouvé... "
    elsif regen_life >= 2 && regen_life <= 5
      puts"Bravo, tu as trouvé un pack de +50 points de vie !"
        @life +=50
        if @life >100
           @life = 100
        end
    else
      puts"Waow, tu as trouvé un pack de +80 points de vie !"
        @life +=80
        if @life >100
           @life = 100
        end
    end
  end
end



