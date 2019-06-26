class Scraper 
  

  def get_genre_list 
    site = "https://www.goodreads.com/genres/mystery"
    
    page = Nokogiri::HTML(open(site))
    
    results = page.css(".left").css(".gr-hyperlink")


    results.each.with_index do |r, i|

      puts "#{i+1}. #{r.text}"
  end


end






# results_array.each do |genre|
# puts "#{genre[0]}"
# end 



# root = 
# url = 
# showpage = Nokogiri::HTML(open(""))

# title


end
