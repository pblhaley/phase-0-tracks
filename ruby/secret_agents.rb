#ENCRYPTION-PSEUDOCODE
#-Write a method that takes a string as input
#-Manipulate that string to advance one letter in the alphabet for each character
#-Output an encryption that shows the next letter in the alphabet for each character
#-Include a conditional statement for the edge case of "z"

def encrypt(str)
  index = 0
    while index < str.length
      if str[index] != "z"
        str[index] = str[index].next
        index += 1
      else
        str[index] = "a"
        index += 1
      end
    end
  str
end



#DECRYPTION-PSEUDOCODE
#-Write a method that takes a string as input
#-Manipulate that string to regress one letter in the alphabet for each character
#-Output a string that shows the previous letter in the alphabet for each character in the input

def decrypt(str)
  index = 0
  alphabet = ("abcdefghijklmnopqrstuvwxyz")
    while index < str.length
      letter = alphabet.index(str[index])
      str[index] = alphabet[letter -1]
      index += 1
    end
  str
end


#DRIVER CODE-PSUEDOCODE
#-Create a method for user input
#-Plug that user input into a respective method to either decrypt or encrypt their input
#-Print the encrypted or decrypted output

#decrypt(encrypt("swordfish")) test - this nested method takes the output of the encryption part of the code and inputs it into the decryption part of the code. It's simple substitution and since the encrypt and decrypt sections counteract each other the output of this nested method should be the same as the input which is "swordfish"

valid_input = FALSE
until valid_input
  puts "Agent X, would you like to decrypt or encrypt a password?"
  answer = gets.chomp
    if answer == "decrypt"
      valid_input = true
      puts "Please enter the password you would like to decrypt."
      decrypt_password = gets.chomp
      puts "Your decrypted password is: #{decrypt(decrypt_password)}"
    elsif answer == "encrypt"
      valid_input = true
      puts "Please enter the password you would like to encrypt."
      encrypt_password = gets.chomp
      puts "Your encrypted password is: #{encrypt(encrypt_password)}"
    else
      puts "Please respond by typing the word decrypt or encrypt depending on your preference."
    end
end