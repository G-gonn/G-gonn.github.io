require "rubygems"
require "nokogiri"
require "open-uri"

mon_incubateur_url = "http://www.mon-incubateur.com/site_incubateur/incubateurs"

def incubateurs(url)
	page = Nokogiri::HTML(open(url))
	coordonnees = Hash.new
	noms = page.xpath ("//*[@id="incubators_list"]")
