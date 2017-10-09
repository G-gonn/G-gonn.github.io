def stock_picker prices
  price, sell, buy = 0, 0, 0
  (0...prices.size).each do |i|
    (i+1...prices.size).each do |j|
      if (prices[j]-prices[i]) > price
        price = (prices[j]-prices[i])
        buy = i
        sell = j
      end
    end
  end
  puts "[#{buy}, #{sell}]"
end

def trader_du_lundi(array_jours)


  list_companies = [:GOO, :MMM, :ADBE, :EA, :BA, :KO, :XOM, :GPS, :MCD, :DIS, :CRM, :JNJ]



  list_companies.each do |a|
    company = []
    array_jours.each do |x|

      company.insert(-1,x[a])

      end
    print "#{a} : "
    puts stock_picker(company)
  end
end

trader_du_lundi([{ :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 },
  { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 },
  { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 },
  { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 },
  { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 },
  { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 },
{ :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }])
