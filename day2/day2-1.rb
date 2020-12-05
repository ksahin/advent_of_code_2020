file_data = File.readlines("input.txt")

valid_count = 0

file_data.each do |n|
    min,max,letter,input = n.match(/(\d+)-(\d+)\s(.):\s(.+)/i).captures
    count = input.count(letter)
    if count >= min.to_i && count <= max.to_i
        valid_count = valid_count + 1
    end
end

puts valid_count

