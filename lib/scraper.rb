class Scraper 
  
require 'nokogiri'
require 'open-uri'

site = "http://www.stopyourekillingme.com/GenreCats/index.html"

page = Nokogiri::HTML(open(site))
# results_array = []
# results_array << 
results = page.css(".Books a")

results.each do |r|
puts r.text.gsub("\n        ", " ")

# (/[[:space:]]/, ' ')
end

# results_array.each do |genre|
# puts "#{genre[0]}"
# end 



# root = 
# url = 
# showpage = Nokogiri::HTML(open(""))

# title


end
