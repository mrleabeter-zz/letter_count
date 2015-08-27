#Write a method 'count_letters' that can tell us all the unique characters that exist in a string that is passed into the method. The method should also return all the indices in the string where each character is found.

def letter_index(string)
  characters = {}
  string.split('').each_with_index do |letter, location|
      if characters[letter] ==  nil
        characters[letter] = [location]
      else
        characters[letter] << location 
    end
  end
  puts "Here is a list of the characters that were in the string you provided, along with the indices where each occured within the string:"
    characters.each do |letter, location|
    puts "#{letter.inspect}: #{location}"
  end
end

teststring1 = "lighthouse in the house..."

letter_index(teststring1)