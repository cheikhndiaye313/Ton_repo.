def wtf_pyramid(total_levels)
    if total_levels.even?
      puts "Le nombre d'étages doit être impair pour que la pyramide fonctionne."
      return
    end
  
    puts "Salut, bienvenue dans ma super pyramide !"
    puts "Voici ta pyramide à #{total_levels} étages :"
  
    half_levels = total_levels / 2 + 1
  
    (1..half_levels).each do |row|
      spaces = half_levels - row
      hashes = 2 * row - 1
  
      puts " " * spaces + "#" * hashes
    end
  
    (half_levels - 1).downto(1) do |row|
      spaces = half_levels - row
      hashes = 2 * row - 1
  
      puts " " * spaces + "#" * hashes
    end
  end
  

  begin
    print "Combien d'étages veux-tu dans la pyramide ? (Choisis un nombre impair) : "
    levels = gets.chomp.to_i
    wtf_pyramid(levels)
  rescue
    puts "Veuillez entrer un nombre valide pour le nombre d'étages."
  end
  
  