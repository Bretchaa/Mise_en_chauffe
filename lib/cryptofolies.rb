
def letter_to_crypto(letter, key)
    new_code = letter.ord + key
    return new_code.chr
end


def caesar_cipher(input_string, key)
    if input_string.class == String


        input_string.chars.map{ |letter| letter.match?(/[[:alpha:]]/) ? letter_to_crypto(letter,key) : letter }.join()
       #input_string.chars.each do |x|
           # x = 0
            #letter = input_string[x]
            #letter.tr(letter,letter_to_crypto(letter, key))
            #x = x + 1
    else
        return "Enter a string pls babe!"
    end
end