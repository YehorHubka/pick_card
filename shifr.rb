require 'digest'

md5 = Digest::MD5.new
sha1 = Digest::SHA1.new

puts "Введите слово или фразу для шифрования:"

phrase = gets.encode("UTF-8").chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

number = gets.encode("UTF-8").chomp

puts "Вот что получилось:"

if number == "1"
  puts md5.hexdigest(phrase)
else
  puts sha1.hexdigest(phrase)
end