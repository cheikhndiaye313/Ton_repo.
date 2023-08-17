def signup
    print "Définissez votre mot de passe : "
    password = gets.chomp
    return password
  end
  
  def login(correct_password)
    print "Veuillez saisir le mot de passe : "
    input = gets.chomp
    while input != correct_password
      puts "Mot de passe incorrect. Réessayez."
      print "Veuillez saisir le mot de passe : "
      input = gets.chomp
    end
    puts "Connexion réussie !"
  end
  
  def welcome_screen
    puts "Bienvenue dans l'espace top secret de la NSA !"
    puts "Voici des informations hautement confidentielles..."
  end
  
  def perform
    secret_password = signup
    login(secret_password)
    welcome_screen
  end
  
  perform
  
  
  