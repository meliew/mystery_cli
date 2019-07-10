class CLI 
  
  @selected_genre = nil
  
  def initialize
    intro
  end
  
  def run
    Scraper.genre_scraper 
    loop do 
    list_genres
    user_input = get_user_input
    if user_input == 'exit' 
        return
    else
    Scraper.bio_scrape(@selected_genre)
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
    @selected_genre = Genre.all[genre_input.to_i]
    
    if genre_input == "exit"
      quit
     
    elsif !@selected_genre
      puts "That item does not exist. Please double check your input."
     
    end
  end
  
  def show_bio
    puts @selected_genre.bio
  end

  def more_info
    
    puts "Would you like to see a list of new releases for your genre?(type y for yes/n for no)"
    answer = gets.chomp.downcase 
    if answer == "y"
      show_books
      elsif answer == "n"
      puts "Thanks"
    else 
      puts "That's not a valid input. Please try again. Type y to see a list of new releases and n for no."
    end
  end
  
  def show_books
    puts "Here are the new releases for #{@selected_genre.name}"
    books = Scraper.new_release_scraper(@selected_genre)
    
    books.each.with_index do |title, i|
      puts "#{i+1}. #{title}"
     
    end
    
  end
  
 def quit 
   puts "Goodbye"
   exit
 end 
 
end




 
 
