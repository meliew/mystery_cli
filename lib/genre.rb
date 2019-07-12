class Genre 
  
  attr_accessor :name, :url, :books, :bio

  
  @@all = []
  
  
  def initialize(genre_hash)
    @name = genre_hash[:name]
    @url = genre_hash[:url]
    @@all << self
    @books = []
  end
  
  def self.all 
    @@all 
  end

end 