#write your code here
def echo(word)
    word
end
def shout(word)
    word.upcase
end
def repeat(word, num = 2 )
    words = []
    for w in 0...num
        words.push(word)
    end
    return words.join(' ')
end
def start_of_word(word, num)
    word[0, num]
end
def first_word(word)
    words = word.split(' ')
    words[0]
end
def titleize(title)
    little_words = ['and','of','in','an', 'the','a', 'over']
    title.capitalize.split(" ").map {|word| 
        if little_words.include?(word) 
            word.downcase
        else 
            word.capitalize
        end
    }.join(' ')
end