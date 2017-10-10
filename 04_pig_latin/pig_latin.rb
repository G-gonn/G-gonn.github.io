#write your code here
def translate(words)
    vowel = ['a', 'e', 'y', 'u', 'i', 'o']
    m = 0
    words = words.split
    while m < words.length
        word = words[m].split(//)
        if vowel.include?(word[0])
            words[m] = word.join + 'ay'
        else
            while vowel.include?(word[0]) != true
                if word[0] == "q" && word[1] == 'u'
                    word = word.rotate(2)
                else
                    word = word.rotate(1)
                end
            end
            words[m] = word.join + 'ay'
        end
        if words[m] =~ /[A-Z]/
            words[m] = words[m].downcase.capitalize
        end
        m += 1
    end
    words = words.join(' ')
end