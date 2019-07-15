class CLI 
  
  @selected_genre = nil
  
  def run
    intro
    Scraper.genre_scraper 
    loop do 
      list_genres
      user_input = get_user_input
      if user_input == 'exit' 
        quit
      else
        Scraper.info_scraper(@selected_genre)
        show_bio
        sleep 2
        more_info
        sleep 4
      end
    end
  end
  
  
  def intro
    puts "\nWelcome to Choose Your Next Mystery!".colorize(:blue)
    sleep 1
    puts "Did you know there are many subgenres related to the mystery genre?"
    sleep 1
    puts "This tool will help you select a new type of mystery. Let's get started!"
    sleep 1
  end
  
  def list_genres
    puts "Here are the subgenres related to the mystery genre".colorize(:light_blue)
    sleep 2
    Genre.all.each.with_index{ |g, i| puts "#{i + 1}. #{g.name}" }
  end
  
  def get_user_input
    genre_input = nil
    puts "\nLearn more about a genre by selecting the number next to the one want to hear about.If you'd like to exit the program please type 'exit'.".colorize(:blue)
    genre_input = gets.chomp.downcase
    if genre_input == "exit"
      quit 
    elsif genre_input == 'back'
      get_user_input
    elsif genre_input.to_i > 0 && genre_input.to_i <= Genre.all.length 
      @selected_genre = Genre.all[genre_input.to_i - 1]
    else
      puts "Hmmm, that doesn't look right. Please double check your input and try again.".colorize(:yellow)
      get_user_input
    end
  end
  
  def show_bio
    puts @selected_genre.bio
    sleep 5
  end

  def more_info
    
    puts "Would you like to see a list of new releases for your genre?(type y for yes/n for no). If you'd like to choose another genre type 'back', otherwise please type 'exit' to quit the program.".colorize(:light_blue)
    answer = gets.chomp.downcase 
    case answer
    when "y"
      show_books
    when "n"
      go_back?
    when "back"
      list_genres
    when 'exit'
      quit
    else 
      puts "Hmmm, that doesn't look right. Please try again. Type y to see a list of new releases, n for no, 'back' to choose a new genre, and 'exit' to quit the program.".colorize(:yellow)
      more_info
    end
  end
  
  def show_books
    puts "Here are the new releases for #{@selected_genre.name}:"
    books = @selected_genre.books
    
    books.each.with_index do |title, i|
      puts "#{i+1}. #{title}"
    end
    sleep 4
    go_back?
  end
  
  def go_back?
    puts "Would you like to choose another genre? Type y for 'yes' to go back to the list of subgenres or n for 'no' and to quit the program.".colorize(:green)
    info = gets.chomp.downcase
    if info == 'y'
      return
    elsif info == 'n' || info == 'exit'
      quit
    else 
      puts "Hmmm, I didn't get that. Please type 'y' for yes or 'n' for no and to quit the program.".colorize(:yellow)
      go_back?
    end
  end
  
 def quit 
   puts "Thanks for stopping by! See you next time!"
   exit
 end 
end




 
 
