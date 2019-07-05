class Genre 
  
  attr_accessor :name, :url, :books, :description

  
  @@all = []
  
  
  def initialize(genre_hash)
    @name = genre_hash[:name]
    @url = genre_hash[:url]
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.bio=(genre)
    @bio = bio 
  end
  
  def self.find_books(user_input)
    self.all[user_input.to_i - 1]
  end
  
end 