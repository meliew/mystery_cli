class CLI 
  
  def initialize
    intro
    # get_available_genres
    # list_genres
    get_user_input
  end
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery"
  end
  
  def get_available_genres 
    # Scraper.all.each.with_index(1) do |
     
  end
  
  def list_genres
      # @genres.each.with_index(1) do |genre, index|
        #puts "#{index}. #{genre}"
      end
    
    # g = @@all[input]
    # if !g

    def get_user_input
      genre_input = nil
    while genre_input != "exit" 
      puts "\nChoose your next mystery by selecting the number of the genre you want:"

      genre_input = gets.chomp.downcase
      
    if genre_input.to_i.between?(1, Genre.all.size)
       selected_genre = Genre.find_books(genre_input)
     elsif 
      genre_input == "exit"
      exit 
    else 
      puts "That item does not exist."
      # show_books(genre_input) if valid_input?(genre_input, @genres)
    end
  end
end
 
  
    def valid_input?(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
    
    def show_books(genre_input)
      subgenre = @genres[genre_input -1]
      puts "Here are the new releases for #{subgenre}"
    end
    
    def exit 
      puts "Goodbye"
    end

 end

 
 
