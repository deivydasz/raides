#require 'pry'
require 'json'

def read(file_name)
  file = File.open(file_name, 'r')
  text = file.read
  text = text.chomp.downcase  # split(" ".sort
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

#puts hsh.count

#puts hsh
#puts hsh.count
# hsh.each { |count| puts "Zodis(zodziai) #{word_hsh.select{|k,v| v == count }.
# keys.join(", ")} pasikartoja #{count} kartus(kartu)"}
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
  proc = []
  letter_amounts.each do |letters, value|
    proc << " #{((value.to_f/total_letters)*100 ).round(2)} #{"%"}  #{letters}" 
  end
 # puts proc.sort.reverse
 proc.sort.reverse
end

file_name = (ARGV[0])

letters_num = read(file_name)
letter_count = count_letters(file_name)
file = File.open(ARGV[1], 'w')

#binding.pry
#puts letter_count
#stats(letter_count, letters_num)
file.puts stats(letter_count, letters_num).to_json

file.close



