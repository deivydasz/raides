require 'json'

def read(file_name)
  file = File.open(file_name, 'r')
  text = file.read
  text = text.chomp.downcase 
   text.gsub!(/\W+/, '')
   text.gsub!(/\d+/, '')
  hsh = Hash.new(0)
  text.each_line do |line|
    line.split.each do |word|
      word.split('').each do |letter|
   hsh[letter] += 1
    end
  end
end
hsh
end
def count_letters(file_name)
  file = File.open(file_name, 'r')
  letters = []
  file.each_line do |line|
    line.split.each do |word|
      word.split('').each do |letter|
    letters << letter
     end
  end
end
letters.count
end

def stats(total_letters, letter_amounts)
  hsh2 = Hash.new{0}
  letter_amounts.each do |letters, value|
      hsh2[letters] = "#{((value.to_f/total_letters)*100 ).round(2)}" 
  end
 b = hsh2.sort_by { |k,w| w}.reverse
 b
end
file_name = (ARGV[0])
letters_num = read(file_name)
letter_count = count_letters(file_name)
file = File.open(ARGV[1], 'w')
file.puts stats(letter_count, letters_num).to_json
file.close
