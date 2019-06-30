class CLI 
  
  def run 
    puts "\nWelcome to Choose Your Next Mystery"
    get_available_genres
    list_genres
    get_user_genre
    valid_input?(input, @genres)
    show_books(input)
    # get_available_genres
    # get_user_genre_choice 
    # get_book_list_by_genre(genre_number)
    # list_books
  end
  
  def get_available_genres 
    
    @genres = ["Suspense", "Crime", "Cozy", "Thriller"]
  end
  
  def list_genres
      puts "\nChoose your next mystery by selecting the number of the genre you want:"
      @genres.each.with_index do |genre, index|
        puts "#{index+1}. #{genre}"
        end
    end 
    
    def get_user_genre
      input = gets.chomp.to_i
      show_books(input) if valid_input?(input, @genres)
    end
    
    def valid_input?(input, data)
      input <= data.length && input > 0 
    end
    
    def show_books(input)
      subgenre = @genres[input - 1]
      puts "Here are the new releases for #{subgenre}"
    end
end
 

 
 
 
