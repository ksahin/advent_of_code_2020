file_data = File.readlines("input.txt", chomp: true)
forest = []
trees = []
file_data.each do |n|
    trees = n.chars
    trees = trees * (file_data.size + 10)
    forest.push(trees)
end


def check_trees(forest, right, down)
    index = right
    tree_count = 0
    forest.each_with_index do |sub,x|
        if x != 0 && x % down == 0 
            if sub[index] == "#"
                tree_count += 1
            end
            index += right
        end
    end

    return tree_count
end


total = check_trees(forest, 1,1) * check_trees(forest, 3,1) * check_trees(forest, 5,1) * check_trees(forest, 7,1) * check_trees(forest, 1,2)

puts total