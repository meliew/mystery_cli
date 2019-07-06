class CLI 
  
  def initialize
    intro
    Scraper.genre_scraper 
    list_genres
    get_user_input
  end
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery"
  end
  
  def get_available_genres 
    # scrape everything 
    # Scraper.all.each.with_index(1) do |
    
  end
  
  def list_genres
    puts "Here are the genres related to mystery"
    Genre.all.each_with_index { |g, i| puts "#{i+1}. #{g.name}" }
  end
  
  # g = @@all[input]
  # if !g
  
  def get_user_input
    genre_input = nil
    puts "\nChoose your next mystery by selecting the number of the genre you want:"
    
    genre_input = gets.chomp.downcase
    
    if genre_input.to_i.between?(1, Genre.all.size)
      selected_genre = Genre.bio(genre_input)
    elsif genre_input == "exit"
      exit 
    else 
      puts "That item does not exist."
      # show_books(genre_input) if valid_input?(genre_input, @genres)
    end
  end
  
  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def more_info
    puts "Would you like to see a list of new releases for your genre?(type y/n)"
    answer = gets.chomp.downcase 
    if answer == "y"
      show_books(genre_input)
    else 
      puts "Goodbye"
    end
  end
  
  def show_books(genre_input)
    subgenre = @genres[genre_input -1]
    puts "Here are the new releases for #{subgenre}"
  end
  
  def exit 
    puts "Goodbye"
  end
  
end




 
 
