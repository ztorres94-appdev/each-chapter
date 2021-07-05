# Write a program that:
# 
# Asks your user to enter any word and have it spelled out letter by letter.  

p "Enter a word for me to spell:"

user_word = gets.chomp.split("")

user_word.each do |the_word|
    p the_word.capitalize

end

