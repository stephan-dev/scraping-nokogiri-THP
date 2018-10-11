
require 'rubygems'
require 'nokogiri'
require 'open-uri'

def getcryptocurrency
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	# puts page.css('title').text

	rates = page.css('[class=price]')

	crypnames = page.css("a[class='currency-name-container link-secondary']")

	#puts "ceci est rate : #{rates}"
	#gets
	#puts "ceci est crypnames #{crypnames}"
	#gets

	#puts crypnames


=begin
    table = Hash.new
    table{
    	crypnames.text => rates.text
    }
=end


  table = Hash.new

    cryp2 = crypnames.map { |cryp| cryp.text }
    rates2 = rates.map { |rate| rate.text }

    market = Hash[cryp2.zip(rates2)]

    puts market

=begin
    table = Hash.new

    
	    rates.each do |rate|	
	    	#table["nom"] = name.text
	    	#nom = nom.text
	    	table = {
	    		"nom" => rate.text
	    		}
    end

    puts table

=end
end

getcryptocurrency

# //*[@id]/td[2]/a

# essayer merge