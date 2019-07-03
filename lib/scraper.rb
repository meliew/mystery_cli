class Scraper

  def genre_scraper
    site = "https://www.goodreads.com"
    page = Nokogiri::HTML(open(site+"/genres/mystery"))
    results = page.css(".left .gr-hyperlink")

    genres = {}

    results.each.with_index do |r, i|
      if r.text != "Fiction" && r.text != "Murder Mystery"
        genres[i] = {:name => r.text, :url => site+r.attribute("href").value}
      end
    end

    genres.each do |k, g|
      puts "#{k}: #{g[:name]}"
    end


    puts "Choose the number genre you would like:"
    input = gets.chomp.to_i

    g = genres[input]
    if !g
      puts "That item does not exist "
      return
    end
    @genre = g
  end

  def about_genre_scraper
    site = @genre[:url]
    page = Nokogiri::HTML(open(site))
    results = page.css("div.mediumText.reviewText span")
    bio = results[1] || results[0]
    #  results = page.css("div.mediumText span").children[0]

    puts bio.text

  end

  def new_release_scraper
    site = @genre[:url]
    page = Nokogiri::HTML(open(site), nil, Encoding::UTF_8.to_s)
    results = page.css(".leftContainer .bigBoxBody").first.css(".bookImage")
    results.each do |book|

      puts book.attribute("alt").text
    end

  end

end






