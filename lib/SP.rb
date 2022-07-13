dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
file = File.open("corpus.txt")
str = file.read
def word_counter(str, dictionnary)
    array = []
    string_words = str.downcase.gsub(/\W/, ' ').split()

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

word_counter(str, dictionnary)