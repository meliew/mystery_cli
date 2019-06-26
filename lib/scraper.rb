class Scraper 
  

def get_genre_list 
site = "http://www.stopyourekillingme.com/GenreCats/index.html"

page = Nokogiri::HTML(open(site))
# results_array = []
# results_array << 
results = page.css(".Books a")

results.each.with_index do |r, i|
puts "#{i+1}. #{r.text.gsub("\n        ", " ")}"

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
