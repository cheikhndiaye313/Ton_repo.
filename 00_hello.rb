def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
  end
  

  print "Entrez votre prénom : "
  user_name = gets.chomp
  
  say_hello(user_name)
  