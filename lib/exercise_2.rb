=begin Original Code
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end
=end
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #print cipher
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  #puts "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  puts ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  #print cipher
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  #puts "theswiftfoxjumpedoverthelazydog"
  puts plaintext_chars.join
  #puts "E".ord
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
