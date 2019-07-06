class Scraper

attr_accessor :genres 

 @@selected_genre = nil

  def self.genre_scraper
    site = "https://www.goodreads.com"
    page = Nokogiri::HTML(open(site+"/genres/mystery"))
    results = page.css(".left .gr-hyperlink")
    
    i = 1
    results.each do |r|
      if r.text != "Fiction" && r.text != "Murder Mystery"
        Genre.new({:id => i, :name => r.text, :url => site+r.attribute("href").value})
        i +=1
      end
    end
  end

  def self.bio_scrape(genre)
    site = genre.url
    page = Nokogiri::HTML(open(site))
    results = page.css("div.mediumText.reviewText span")
    bio = results[1] || results[0]
    genre.bio = bio.text
  end

  def self.new_release_scraper(genre)
    site = genre.url
    page = Nokogiri::HTML(open(site), nil, Encoding::UTF_8.to_s)
    results = page.css(".leftContainer .bigBoxBody").first.css(".bookImage")
    books = []
    results.each do |book|
      books << book.attribute("alt").text
    end
    books
  end

end






