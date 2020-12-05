file_data = File.readlines("input.txt")

valid_count = 0

file_data.each do |n|
    min,max,letter,input = n.match(/(\d+)-(\d+)\s(.):\s(.+)/i).captures
    min = min.to_i
    max = max.to_i
    if (input[min-1] == letter && input[max-1] != letter) || (input[min-1] != letter && input[max-1] == letter)
        valid_count = valid_count + 1
    end
end

puts valid_count