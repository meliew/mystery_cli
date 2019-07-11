class CLI 
  
  @selected_genre = nil
  
  def run
    intro
    Scraper.genre_scraper 
    loop do 
    list_genres
    user_input = get_user_input
    if user_input == 'exit' 
        return
    else
    Scraper.info_scraper(@selected_genre)
    # binding.pry
    show_bio
    sleep 2
    more_info
    sleep 4
    end
  end
end
  
  
  #update CLI so they can see the list of genres again - go backwards to 
  #move back in application 
  #when people go back to main menu it should recall start but only call Scraper methods if it doesn't already exist. if statement. Scraper.genre_scraper if genre.all = []
  
  #see if genre.books.length is greater than zero, if it's not zero then go to the next step 
  
  #display second level info, then ask the user what they want to do. go back, exit.
  
  
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery!"
    sleep 1
    puts "Did you know there are many subgenres related to the mystery genre?"
    sleep 1
    puts "This tool will help you select a new type of mystery. Let's get started!"
  end
  
  def list_genres
    puts "Here are the subgenres related to the mystery genre"
    Genre.all.each{ |i, g| puts "#{i}. #{g.name}" }
  end
  
  def get_user_input
    genre_input = nil
    puts "\nLearn more about a genre by selecting the number next to the one want to hear about. You can also type exit if you'd like to quit the program"
    genre_input = gets.chomp.downcase
    if genre_input.to_i <= Genre.all.count && genre_input.to_i > 0 
    @selected_genre = Genre.all[genre_input.to_i]
    elsif genre_input == "exit"
    quit 
    elsif genre_input == 'back'
    get_user_input 
    else 
      puts "That item does not exist. Please double check your input."
      #genre_input = gets.chomp.downcase
    get_user_input
    end
  end
  
  def show_bio
    puts @selected_genre.bio
  end

  def more_info
    
    puts "Would you like to see a list of new releases for your genre?(type y for yes/n for no). If you'd like to choose another genre type 'back', otherwise please type 'exit' to quit the program."
    answer = gets.chomp.downcase 
    if answer == "y"
      show_books
      elsif answer == "n"
      go_back?
      #puts "Please type 'exit' to quit, or 'back' to choose a new genre."
        elsif answer == "back"
        list_genres
        elsif answer == 'exit'
        quit
        else 
      puts "That's not a valid input. Please try again. Type y to see a list of new releases, n for no, 'back' to choose a new genre, and 'exit' to quit the program."
      more_info
    end
    
  end
  
  def show_books
    puts "Here are the new releases for #{@selected_genre.name}"
    books = @selected_genre.books
    
    books.each.with_index do |title, i|
      puts "#{i+1}. #{title}"
     
    end
    
  end
  
  def go_back?
    puts "Would you like to choose another genre? Type y for 'yes' to go back to the list of subgenres or n for 'no' and to quit the program."
    info = gets.chomp.downcase
    if info == 'y'
      list_genres 
      elsif info == 'n' || info == 'exit'
      quit
    else 
      puts "Hmmm, I didn't get that. Please type 'y' for yes or 'n' for no and to quit the program."
      go_back?
    end
    
  end
  
 def quit 
   puts "Goodbye"
   exit
 end 
 
end




 
 
