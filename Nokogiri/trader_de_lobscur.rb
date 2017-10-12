
require 'rubygems'
require 'nokogiri'
require 'open-uri'

Cryptocurrency_Market_URL = "https://coinmarketcap.com/all/views/all/"

def cryptocurrencies(url)
	page = Nokogiri::HTML(open(url))
	rates = Hash.new
	currency = page.xpath('//td[2]/a')
	rate = page.xpath('//td[5]/a[@class="price"]')
	for i in 0...currency.length do
		rates[currency[i].text] = rate[i].text
	end
	rates.each do |x, y|
		puts "#{x}: #{y}"
	end
end

while true
cryptocurrencies(Cryptocurrency_Market_URL)
sleep 3600
endcd 