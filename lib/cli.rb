class CLI 
  
  def run 
    puts "Welcome to Choose Your Next Mystery"
    # get_available_genres
    # get_user_genre_choice 
    # get_book_list_by_genre(genre_number)
    # list_books
  end
  
  def get_available_genres 
    
    @genres = ["Suspense", "Crime", "Cozy", "Thriller"]
  end
  
  def get_user_genre
        puts "Choose your next mystery genre by selecting the number you want:"

      @genres.each.with_index do |genre, index|
        puts "#{index+1}. #{genre}"
      end
        input = gets.chomp.to_i 
      
    end 
end
 

 
 
 
