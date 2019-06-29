class CLI 
  
  def run 
    puts "\nWelcome to Choose Your Next Mystery"
    get_available_genres
    list_genres
    get_user_genre
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
      input = gets.chomp
    end
    
    def valid_input?(input, data)
      input.to_i <= data.length && input.to_i > 0 
    end
end
 

 
 
 
