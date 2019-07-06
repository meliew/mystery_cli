class CLI 
  
  @selected_genre = nil
  
  def initialize
    intro
    Scraper.genre_scraper 
    list_genres
    get_user_input
    Scraper.bio_scrape(@selected_genre)
    show_bio
    more_info
  end
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery"
  end
  
  def list_genres
    puts "Here are the genres related to mystery"
    Genre.all.each{ |i, g| puts "#{i}. #{g.name}" }
  end
  
  def get_user_input
    genre_input = nil
    puts "\nChoose your next mystery by selecting the number of the genre you want:"
    
    genre_input = gets.chomp.downcase
    @selected_genre = Genre.all[genre_input.to_i]
    
    if genre_input == "exit"
      quit
    elsif !@selected_genre
      puts "That item does not exist."
      quit
    end
  end
  
  def show_bio
    puts @selected_genre.bio
  end

  def more_info
    puts "Would you like to see a list of new releases for your genre?(type y/n)"
    answer = gets.chomp.downcase 
    if answer == "y"
      show_books
    else 
      quit
    end
  end
  
  def show_books
    puts "Here are the new releases for #{@selected_genre.name}"
    books = Scraper.new_release_scraper(@selected_genre)
    
    books.each.with_index do |title, i|
      puts "#{i}. #{title}"
    end
  end
  
 def quit 
   puts "Goodbye"
   exit
 end 
 
end




 
 
