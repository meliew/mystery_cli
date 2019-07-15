class Scraper
  
  
  #when people go back to main menu it should recall start but only call Scraper methods if it doesn't already exist. if statement. Scraper.genre_scraper if genre.all = []
  
  #see if genre.books.length is greater than zero, if it's not zero then go to the next step 
  
  def self.genre_scraper
    site = "https://www.goodreads.com"
    page = Nokogiri::HTML(open(site+"/genres/mystery"))
    results = page.css(".left .gr-hyperlink")
    results.each do |r|
      if r.text != "Fiction" && r.text != "Murder Mystery"
        Genre.new({:name => r.text, :url => site+r.attribute("href").value})
      end
    end
  end
  
  def self.info_scraper(genre)
    # if genre already contains books it has already been crawled 
   # return if genre.books.length > 0 
   if genre.books.length == 0
    site = genre.url
    page = Nokogiri::HTML(open(site), nil, Encoding::UTF_8.to_s)
    bio_results = page.css("div.mediumText.reviewText span")
    bio = bio_results[1] || bio_results[0]
    genre.bio = bio.text
    new_releases = page.css(".leftContainer .bigBoxBody").first.css(".bookImage")

    new_releases.each do |book|
      genre.books << book.attribute("alt").text
     end
    end
  end
  

  
end









