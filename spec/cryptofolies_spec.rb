require_relative '../lib/cryptofolies.rb'

describe "this the method converting a letter to the crypto" do
    it "should return a letter key times after on the alphabet" do
        expect(letter_to_crypto('a', 3)).to eq('d')
        expect(letter_to_crypto('B', 4)).to eq('F')
        expect(letter_to_crypto('w', 3)).to eq('z')
    end
end

describe "it is the caesar_cipher method g" do
    it "shoudl return the full string encrypted" do
        expect(caesar_cipher("What a string!", 5)).to eq("\\mfy f xywnsl!")
    end
    it "should return error message if it is not a string" do
        expect(caesar_cipher(3, 5)).to eq("Enter a string pls babe!")
        expect(caesar_cipher(2.3, 5)).to eq("Enter a string pls babe!")
    end
end
