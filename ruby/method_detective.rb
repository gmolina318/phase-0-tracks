# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts ''
p "zom".sub(/[o]/,"oo")
# "zom".<???>
# => “zoom”
puts ''
p "enhance".center(15)
# "enhance".<???>
# => "    enhance    "
puts ''
p "Stop! You’re under arrest!".upcase
# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts ''
p "the usual".concat(" suspects")
# "the usual".<???>
#=> "the usual suspects"
puts ''
p " suspects".insert(0,"the usual")
# " suspects".<???>
# => "the usual suspects"
puts ''
p "The case of the disappearing last letter".chop
# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts ''
p "The mystery of the missing first letter"[1..-1]
# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts ''
p "Elementary,    my   dear        Watson!".split.join (" ")
# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts ""
p "z".ord
# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?) ASCII code for the character
puts ''
p "How many times does the letter 'a' appear in this string?".count"a"
# "How many times does the letter 'a' appear in this string?".<???>
# => 4