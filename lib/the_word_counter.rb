dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] 

def word_counter(str, dictionnary)
    array = []
    string_words = str.downcase.split(/[\s,',!,?]/)

    string_words.each do |single_word|
        dictionnary.each do |dic_word| 
            if single_word.include? dic_word
              array.push(dic_word)
            end
        end
    end 

           puts array.tally
    return array.tally
end

word_counter("Howdy partner, sit down! How's it going?", dictionnary)

#1 creer hash vide, 
#2 on split la string et on range les mots dans la hash si ca fait parti du dictionnary, "hello world" : (  Hello => 0, world =>) et si ca fait parti d'un mot
#3. on compte le nombre d'accurences et on range dans la hash,  (Hello => 1, world => 1)





# la key = new new_array, value = nombre d'occurence
