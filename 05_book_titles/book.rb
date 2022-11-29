class Book
# write your code here
attr_accessor :title
    def title
        little_words = ['and','of','in','an', 'the','a']
            @title.capitalize.split(" ").map {|word| 
            if no_words.include?(word) 
                #puts word
                word.downcase
            else 
                word.capitalize
            end
            }.join(' ')
            
    end
end
