def bubble_sort(arr)
    test = false
    while !test
        test = true
            (arr.each_with_index).each do |item, index|
                next if index == arr.length - 1 
                if arr[index] > arr[index+1]
                arr[index], arr[index+1] = arr[index+1], arr[index] 
                test = false
            end
        end
    end

    arr
    
end    

arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr) # = [0, 2, 2, 3, 4, 78]
