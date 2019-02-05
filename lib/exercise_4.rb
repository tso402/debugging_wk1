def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) # 1
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord] # 2
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

=begin
Comments
1 The purpose of this code is to supply all letters from a-z while removing the 'key'letters.
However '...' is non inclucive of the range. Instead you should use '..' which will include the range.

2 
