file_data = File.readlines("input.txt", chomp: true)
forest = []
trees = []
file_data.each do |n|
    trees = n.chars
    trees = trees * (file_data.size + 10)
    forest.push(trees)
end

index = 3
tree_count = 0
print forest
forest.each_with_index do |sub,x|
    
    if x != 0 
        if sub[index] == "#"
            tree_count += 1
        end
        index += 3
    end
end

puts tree_count