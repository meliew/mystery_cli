class Genre 
  
  attr_accessor :name, :url

  
  @@all = []
  
  
  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_books(user_input)
    self.all[user_input.to_i -1]
  end
  
end 