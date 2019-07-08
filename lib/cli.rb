class CLI 
  
  @selected_genre = nil
  
  def initialize
    intro
    sleep 1
    Scraper.genre_scraper 
    list_genres
    get_user_input
    Scraper.bio_scrape(@selected_genre)
    show_bio
    more_info
  end
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery! Did you know there are many subgenres related to the mystery genre? This tool will help you select a new type of mystery and can show you new releases as well. Let's get started!"
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
      puts "That item does not exist."
      quit
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
    else 
      quit
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




 
 
