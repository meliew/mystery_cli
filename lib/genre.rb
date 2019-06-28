class Genre 
  
  @@all = []
  
  attr_accessor :name, :books, :authors, :url
  
  def self.all 
    @@all 
  end 
  
  def initialize(name: name, url: url)
    @name = name
    @url = url
    @@all << self
  end
  
  
  
end 