#write your code here
def translate(words)
    split_words = words.split(' ')
    split_words.map {|word| translate_one_word(word)}.join(' ')

end

def translate_one_word(word)
    firstlet = word[0]
 seclet = word[1]
 thirdlet = word[2]
 vowels = ['a','e','i','o','u']
   
        if firstlet + seclet == 'qu'
            word.slice!(0,2)
            word.insert(-1, "#{firstlet}#{seclet}ay")
        elsif (seclet + thirdlet == 'qu') || ( firstlet + seclet + thirdlet == 'sch')
            word.slice!(0,3)
            word.insert(-1, "#{firstlet}#{seclet}#{thirdlet}ay")
        elsif vowel.include?(firstlet) 
            word.insert(-1, "ay")
       elsif !vowel.include?(firstlet) && !vowel.include?(seclet) && !vowel.include?(thirdlet)
            word.slice!(0,3)
            word.insert(-1, "#{firstlet}#{seclet}#{thirdlet}ay") 
        elsif !vowel.include?(firstlet) && !vowel.include?(seclet)
            word.slice!(0,2)
            word.insert(-1, "#{firstlet}#{seclet}ay")
        else 
            word.slice!(0)
            word.insert(-1, "#{firstlet}ay")
        end
end