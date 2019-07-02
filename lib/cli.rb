class CLI 
  
  def run 
    puts "\nWelcome to Choose Your Next Mystery"
    get_available_genres
    list_genres
    get_user_genre
  end
  
  def get_available_genres 
     @genres = ["Suspense", "Crime", "Cozy", "Thriller"]
  end
  
  def list_genres
      puts "\nChoose your next mystery by selecting the number of the genre you want:"
      @genres.each.with_index(1) do |genre, index|
        puts "#{index}. #{genre}"
      end
    end 
    
    def get_user_genre
      chosen_genre = gets.chomp.to_i
      show_books(chosen_genre) if valid_input?(chosen_genre, @genres)
    end
    
    def valid_input?(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
    
    def show_books(chosen_genre)
      subgenre = @genres[chosen_genre - 1]
      puts "Here are the new releases for #{subgenre}"
    end
end
 

 
 
 
