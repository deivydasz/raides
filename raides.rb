def read()
  file = File.open('bigtext.txt', 'r')
  hsh = Hash.new(0)
  file.each_line do |line|
    line.split.each do |word|
      word.split('').each do |letter|
    hsh[letter] += 1
   
    end
  end

end



puts hsh.count

puts hsh
puts hsh.count
# hsh.each { |count| puts "Zodis(zodziai) #{word_hsh.select{|k,v| v == count }.
# keys.join(", ")} pasikartoja #{count} kartus(kartu)"}
hsh
end


def count_letters
  file = File.open('bigtext.txt', 'r')
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
    proc << " #{((value.to_f/total_letters) * 100 )}  #{letters}" 
  end
  puts proc.sort.reverse
end


letters_count = read
letter_count = count_letters
puts letter_count

stats(letter_count, letters_count)




