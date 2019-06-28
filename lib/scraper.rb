class Scraper 
  

  def get_genre_list 
  site = "https://www.goodreads.com"  
  page = Nokogiri::HTML(open(site+"/genres/mystery"))   
  results = page.css(".left .gr-hyperlink")

  genres = {}

  results.each.with_index do |r, i|
    if r.text != "Fiction"
      genres[i] = {:genre => r.text, :url => site+r.attribute("href").value}
  end
end

  genres.each do |k, g|
    puts "#{k}: #{g[:genre]}"
  end

puts "Choose the number genre you would like:"
input = gets.chomp.to_i

g = genres[input]
if !g
  puts "That "
  return
end
  
  end


end



# site = "https://www.goodreads.com/genres/mystery"
    
#     page = Nokogiri::HTML(open(site))
    
#     results = page.css(".left").css(".gr-hyperlink")

#     results.each.with_index do |r, i|
    
#     if r.text != "Fiction"

#     puts "#{i}. #{r.text}"


# results_array.each do |genre|
# puts "#{genre[0]}"
# end 



# root = 
# url = 
# showpage = Nokogiri::HTML(open(""))

# title


