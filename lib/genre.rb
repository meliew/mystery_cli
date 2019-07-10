class Genre 
  
  attr_accessor :name, :url, :books, :bio

  
  @@all = {}
  
  #refactor id 
  def initialize(genre_hash)
    @name = genre_hash[:name]
    @url = genre_hash[:url]
    id = genre_hash[:id]
    @@all[id] = self
    @books = []
  end
  
  def self.all 
    @@all 
  end

  def self.find_books(user_input)
    self.all[user_input.to_i - 1]
  end
  
end 