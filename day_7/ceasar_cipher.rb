# Pseudocoding

# Set up hash for alphabet? 
    # key is capital letter, A-Z
    # Value is index number of letter in an array, 0-25
    # subtract num param from this index number
    # e.g.
    # B = 1
    # num = 5
    # alpha_index = -4
    # using this index num to access alphabet array, would return W
# user passes in a string and num (how many letters to go back for encoded message)
# Find index value of letter in hash
# subtact num param from this index value
# use difference to access letter at this index # in alphabet array
# declare an encoded_string variable outside of loop
    # initial value will be ""
# concatenate this string with each letter found from alphabet array 
# add conditional for if value is " " then simply add the " " to the encoded_string 

class CeasarCipher
    attr_reader :str, :num, :alpha_hash, :alpha_array
    def initialize(str, num)
        @str = str
        @num = num
        @alpha_hash = {
            "A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6, "H" => 7, "I" => 8, "J" => 9, "K" => 10, "L" => 11, "M" => 12, "N" => 13, "O" => 14, "P" => 15, "Q" => 16, "R" => 17, "S" => 18, "T" => 19, "U" => 20, "V" => 21, "W" => 22, "X" => 23, "Y" => 24, "Z" => 25
        }
        @alpha_array = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    end 

    

    def encode_message
        encoded_str = ""
        self.str.split('').each do |letter|
            if letter == " " || letter == "'" || letter == "-" || letter == "." || letter == "!" || letter == "?"
                encoded_str += letter
            elsif self.alpha_hash[letter.upcase]
                index = self.alpha_hash[letter.upcase]
                encoded_letter = alpha_array[index - self.num]
                encoded_str += encoded_letter
            else 
                return "Please only include letters or common puncuation marks in your message"
            end 
        end

        encoded_str
    end

end

message_1 = CeasarCipher.new("Hello World", 5)
message_2 = CeasarCipher.new("You're bad at making long-term plans!", 3)
message_3 = CeasarCipher.new("$&*", 2)

p message_1.encode_message
p message_2.encode_message
p message_3.encode_message