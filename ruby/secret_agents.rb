# Writing an "encrypt" method with the alphabet (abcdefghijklmnopqrstuvwxy)
def encrypt_method(string)
  # Setting our beginning index counter number to 0
  index = 0
  # This new alphabet is the problem that we are looking to solve
  new_string = ""
  # And so, while the value of index is less than the length of the input given we will perform an operation
  while index < string.length
    # This is our operation to translate the given alphabet into the new alphabet using our operation
    # You could say that x = x + x[index].next (we used a bang operator to permanently shift the index values up by 1.)
    new_string = new_string + string[index].next!
    # We use this increment in order to avoid an infinite loop.
    index += 1
    # Ending our operation/method
    end
  # Printing out our new alphabet
  p new_string
#ending the entire encrypt method
end



# Define decryypt method
def decrypt_method(string)
  index = 0
  # Here we're setting a new variable to apply in our while loop
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_string = ""
  while index < string.length
    # Setting the letter variable to be the index number of its matching letter value within the alphabet
    # For example, if your letter is b, b = b[1], which means the index value of b is 1
    letter = string[index]
    alph_num = alphabet.index(letter)
    # Here is our formula/method to find the new string
    # We are subracting 1 from the index value which is now going to represent new_string.
    new_string = new_string + alphabet[alph_num - 1]
    index += 1
  end
  p new_string
end

# Driver code / calling our methods
#puts encrypt("abc") #should return "bcd"
#puts encrypt("zed") #should return "afe"
#puts decrypt("bcd") #should retun "abc"
#puts decrypt ("afe") #should return "zed"
#puts decrypt(encrypt("swordfish"))

#NOTES
# Using the nesting method, will decrpyt and encrpyt swordfish. The console prints out both results.
# The result when it is encrypted and the result when it is decrpyted.

#Adding an Interface

#Ask them for the password
puts "What is the password?"
password = gets.chomp


#Ask user whether they would to decrpt or encrypt a password
puts "Would you like to encrypt or decrypt a password?"
encrypt_decrypt = gets.chomp
  if encrypt_decrypt == "encrypt"
    encrypt_pass = encrypt_method("#{password}")
    puts "Your encrypted password is #{encrypt_pass}"
  elsif encrypt_decrypt == "decrypt"
    decrypt_pass = decrypt_method("#{password}")
    puts "Your decrypted password is #{decrypt_pass}"
  else
    puts "We didn't get that. You must be a spy! Goodbye!"
  end