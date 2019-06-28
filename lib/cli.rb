class CLI 
  
  def run 
    puts "Welcome to Choose Your Next Mystery"
    # get_available_genres
    # get_user_genre_choice 
    # get_book_list_by_genre(genre_number)
    # list_books
  end
  
  def get_available_genres 
    
    genre_choices = ["1. Suspense", "2. Crime", "3. Cozy", "4. Thriller"]
    puts "choose your genre by number"
    puts genre_choices
    input = gets.chomp.to_i 
    puts input 
    
    
  end 
  
  def get_user_genre_choice
    genres = []
    
  end 
end
 

 
 
 
