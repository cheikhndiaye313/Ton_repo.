def roll_dice
    rand(1..6)
  end
  
  def move(player_position, roll_result)
    case roll_result
    when 5, 6
      player_position += 1
      puts "Bravo, vous avancez d'une marche ! Vous êtes maintenant à la marche #{player_position}."
    when 1
      player_position -= 1
      puts "Oops, vous descendez d'une marche. Vous êtes maintenant à la marche #{player_position}."
    else
      puts "Rien ne se passe. Vous êtes toujours à la marche #{player_position}."
    end
    return player_position
  end
  
  def perform
    player_position = 0
    puts "Bienvenue dans le jeu de l'escalier !"
    puts "Vous êtes au départ en bas de l'escalier."
    
    while player_position < 10
      puts "Appuyez sur Entrée pour lancer le dé."
      gets.chomp
      
      roll_result = roll_dice
      puts "Vous avez lancé un #{roll_result}."
  
      player_position = move(player_position, roll_result)
    end
  
    puts "Félicitations ! Vous avez atteint la 10ème marche. Vous avez gagné !"
  end
  
  perform
  
  def roll_dice
    rand(1..6)
  end
  
  def move(player_position, roll_result)
    case roll_result
    when 5, 6
      player_position += 1
    when 1
      player_position -= 1
    end
    return player_position
  end
  
  def play_game
    player_position = 0
    turns = 0
    
    while player_position < 10
      roll_result = roll_dice
      player_position = move(player_position, roll_result)
      turns += 1
    end
  
    return turns
  end
  
  def average_finish_time(num_simulations)
    total_turns = 0
  
    num_simulations.times do
      total_turns += play_game
    end
  
    average_turns = total_turns.to_f / num_simulations
    puts "En moyenne, il faut #{average_turns} tours pour arriver à la 10ème marche."
  end
  
  average_finish_time(100)
  