class CLI 
  
  def run 
    self.welcome 
    Scraper.get_genre_list 
    loop do 
      puts "choose a mystery genre by number"
      input = gets.chomp 
      if input =='exit' || input.include?('n')
        return 
      else 
        self.
  end
  
 
 
 
 
 
end