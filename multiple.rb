class Multiples

def multiples
  (1..999).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end

  def sumMultiples(multiples)
    total = 0
    multiples.each { |i| total+= i }
    puts(total)
  end

end

multiples = Multiples.new
multiples.sumMultiples(multiples.multiples)